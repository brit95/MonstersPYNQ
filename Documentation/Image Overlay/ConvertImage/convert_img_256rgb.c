/*
 * convert_img_256rgb.c
 * 
 * The purpose of this program is to take an input PPM image, find the closest RGB values 
 * that are available in a 256-color palette mapping, and generate both a new PPM image with
 * those values and a VHDL file with the associated indices of the mapping.
 * The mapping is based on the xterm color mapping, which can be found here: 
 * http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
 *
 * It takes three command line arguments: first the input PPM file, second the output PPM
 * file, and third the output VHDL file.
 *
 * This program does not parse for comments in the PPM file header. Be sure to remove them.
 *
 * Usage: ./generate_image input.ppm output.ppm output.vhd
 *
 * Brittany Wilson, April 3, 2017
 */

#include <stdio.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>

// Stores the size of the memory array containing the images in the image_overlay filter
#define N 81920
#define ARRAY_LENGTH 256	// This is the length of the array of RGB values.

char *infilename, *outfilename, outbinname[30], outcoename[30];	// store the input and output file names
FILE *infile, *outfile, *outbin, *outcoe, *outcoe1;	// file handles for the input and output files

int width, height;	// store the width and height of the input image

// Store the mapping of the 256 RGB values
int rgb_values[ARRAY_LENGTH] = {0, 8388608, 32768, 8421376, 128, 8388736, 32896, 12632256, 8421504, 16711680, 65280, 16776960, 255, 16711935, 65535, 16777215, 0, 95, 135, 175, 215, 255, 24320, 24415, 24455, 24495, 24535, 24575, 34560, 34655, 34695, 34735, 34775, 34815, 44800, 44895, 44935, 44975, 45015, 45055, 55040, 55135, 55175, 55215, 55255, 55295, 65280, 65375, 65415, 65455, 65495, 65535, 6225920, 6226015, 6226055, 6226095, 6226135, 6226175, 6250240, 6250335, 6250375, 6250415, 6250455, 6250495, 6260480, 6260575, 6260615, 6260655, 6260695, 6260735, 6270720, 6270815, 6270855, 6270895, 6270935, 6270975, 6280960, 6281055, 6281095, 6281135, 6281175, 6281215, 6291200, 6291295, 6291335, 6291375, 6291415, 6291455, 8847360, 8847455, 8847495, 8847535, 8847575, 8847615, 8871680, 8871775, 8871815, 8871855, 8871895, 8871935, 8881920, 8882015, 8882055, 8882095, 8882135, 8882175, 8892160, 8892255, 8892295, 8892335, 8892375, 8892415, 8902400, 8902495, 8902535, 8902575, 8902615, 8902655, 8912640, 8912735, 8912775, 8912815, 8912855, 8912895, 11468800, 11468895, 11468935, 11468975, 11469015, 11469055, 11493120, 11493215, 11493255, 11493295, 11493335, 11493375, 11503360, 11503455, 11503495, 11503535, 11503575, 11503615, 11513600, 11513695, 11513735, 11513775, 11513815, 11513855, 11523840, 11523935, 11523975, 11524015, 11524055, 11524095, 11534080, 11534175, 11534215, 11534255, 11534295, 11534335, 14090240, 14090335, 14090375, 14090415, 14090455, 14090495, 14114560, 14114655, 14114695, 14114735, 14114775, 14114815, 14124800, 14124895, 14124935, 14124975, 14125015, 14125055, 14135040, 14135135, 14135175, 14135215, 14135255, 14135295, 14145280, 14145375, 14145415, 14145455, 14145495, 14145535, 14155520, 14155615, 14155655, 14155695, 14155735, 14155775, 16711680, 16711775, 16711815, 16711855, 16711895, 16711935, 16736000, 16736095, 16736135, 16736175, 16736215, 16736255, 16746240, 16746335, 16746375, 16746415, 16746455, 16746495, 16756480, 16756575, 16756615, 16756655, 16756695, 16756735, 16766720, 16766815, 16766855, 16766895, 16766935, 16766975, 16776960, 16777055, 16777095, 16777135, 16777175, 16777215, 526344, 1184274, 1842204, 2500134, 3158064, 3815994, 4473924, 5131854, 5789784, 6316128, 6710886, 7763574, 8421504, 9079434, 9737364, 10395294, 11053224, 11711154, 12369084, 13027014, 13684944, 14342874, 15000804, 15658734};

/*
 *	Parse the input image for the RGB values, determine which array value is closest for 
 *	each RGB value, and output the associated indices to a VHDL file.
 *  Also print information (such as height and width).
 */
int main(int argc, char *argv[])
{
	// Check that the correct number of arguments exist.
	// Print usage statement if incorrect.
	if(argc != 4)
	{
		printf("Usage: ./generate_img input.ppm output.ppm output_name\r\n");
		exit(0);
	}
	
	// Assign the filenames from the command line arguments.
	infilename = argv[1];
	outfilename = argv[2];
	sprintf(outbinname, "%s.bin", argv[3]);
	sprintf(outcoename, "%s.coe", argv[3]);
	
	// Open the input file as read-only.
	infile = fopen(infilename, "r");
	// Open the output files as write-only.
	outfile = fopen(outfilename, "w");
	outbin = fopen(outbinname, "wb");
	outcoe = fopen(outcoename, "w");
	
	// If any file was not successfully opened, print an error statement & exit
	if(infile == NULL || outfile == NULL || outbin == NULL || outcoe == NULL )//|| outcoe1 == NULL)
	{
		if(infile==NULL)
			printf("Could not open %s.\r\n", infilename);
		if(outfile==NULL)
			printf("Could not open %s.\r\n", outfilename);
		if(outbin==NULL)
			printf("Could not open %s.\r\n", outbinname);
		if(outcoe==NULL)
			printf("Could not open %s.\r\n", outcoename);
		printf("Exiting program.\r\n");
		exit(0);
	}
	
	// Store lines in this character buffer
	char buf[255];
	
	// Get the first line of the input file. Verify that it is a PPM file.
	fgets(buf, 255, infile);
	if(strcmp(buf, "P6\n") != 0)
		printf("The first line in %s is incorrect\r\n", infilename);
		
	// Read in the height and width, store their values, and print them.
	printf("Reading in height & width\r\n");
	
	fscanf(infile, "%s", buf);
	width = atoi(buf);
	fscanf(infile, "%s", buf);
	height = atoi(buf);
	
	printf("width = %d\r\n", width);
	printf("height = %d\r\n", height);
	
	// If image too large, print error statement and exit.
	if(width*height > N)
	{
		printf("Error. Maximum number of pixels allowed is %d. Input image has %d.\r\n", N, width*height);
		exit(0);
	}
		
	// Read in the max RGB value. Should be 255.
	printf("Reading in \"255\"\r\n");
	fgets(buf, 255, infile);
	fgets(buf, 255, infile);
	printf("%s", buf);
	
	// Write the first portion of the bin file with width and height
	sprintf(buf, "%c%c", width, height);
	fwrite(buf, sizeof(char), 2, outbin);
	
	// Write the first portion of the COE files
	fputs("memory_initialization_radix=16;\n", outcoe);
	fputs("memory_initialization_vector=", outcoe);

	// Write the header of the output PPM file based on the input width & height
	fputs("P6\n", outfile);
	sprintf(buf, "%d %d\n", width, height);
	fputs(buf, outfile);
	fputs("255\n", outfile);
	
	fclose(outfile);	// Close the output PPM file
	// Re-open the output PPM file as a binary file (and append to it)
	outfile = fopen(outfilename, "ab");
	
	int h,w;	// loop iterators
	
	// Iterate over every pixel according to the specified height and width.
	for(h=0; h<height; h++)
	{
		for(w=0; w<width; w++)
		{
				
			// Get the next RGB values.
			int red = fgetc(infile);
			int green = fgetc(infile);
			int blue = fgetc(infile);
			
			// Combine the colors into one 24-bit value
			int rgb = (red << 16) + (green << 8) + blue;
			
			// Initialize the minimum difference value and its index
			int min_index = -1;
			int min_diff = 0xFFFFFF;
			
			// Iterate over the 256-color RGB array, updating the minimum difference
			// and its associated index when closer colors are discovered.
			int i;
			for(i=0; i<ARRAY_LENGTH; i++)
			{
				// Separate the red, green, and blue values from the next RGB array value
				rgb = rgb_values[i];
				int r = (rgb >> 16) & 0xFF;
				int g = (rgb >> 8) & 0xFF;
				int b = rgb & 0xFF;
				
				// Determine the difference between the two colors by summing the difference
				// of their red, green, and blue values
				int diff = (red > r ? red-r : r-red) + (green > g ? green-g : g-green) + (blue > b ? blue-b : b-blue);
				// Update the minimum difference and its index if a closer color is found
				if(diff < min_diff)
				{
					min_diff = diff;
					min_index = i;
				}
			}
			
			// Set the RGB value to the closest color value.
			rgb = rgb_values[min_index];
			
			// Separate the red, green, and blue values from the RGB value
			red = (rgb >> 16) & 0xFF;
			green = (rgb >> 8) & 0xFF;
			blue = rgb & 0xFF;
			
			// Write the index of the new RGB value to the COE file
			sprintf(buf, "%02X, ", min_index);
			fputs(buf, outcoe);
			
			// Write the index of the new RGB value to the bin file
			sprintf(buf, "%c", min_index);
			fwrite(buf, sizeof(char), 1, outbin);
			
			// Write the R,G,B values to the output PPM file.
			sprintf(buf, "%c%c%c", red&0xFF, green&0xFF, blue&0xFF);
			fwrite(buf, sizeof(char), 3, outfile);
		}
		fputs("\n", outcoe);
	}
	
	// Close the input and output files.
	fclose(infile);
	fclose(outbin);
	fclose(outfile);
	fclose(outcoe);
	
	return 0;
}