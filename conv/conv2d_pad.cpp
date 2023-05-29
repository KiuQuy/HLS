#include <iostream>
#include "header.hpp"
using namespace std;
void conv(int image[img_length][img_width], int filter[fil_size][fil_size], int conv_img[img_length][img_length]) {

    // Padding ảnh với 0
    int padded_image[img_length + 2][img_length + 2];
    for (int i = 0; i < img_length + 2; i++) {  // i cot, j hang
        for (int j = 0; j < img_width+ 2; j++) {
            if (i == 0 || j == 0 || i == img_length + 1 || j == img_width + 1) {
                padded_image[i][j] = 0;
            }
            else {
                padded_image[i][j] = image[i - 1][j - 1];
            }
        }
    }
    int sum;
    // Tính tích chập
    for (int i = 0; i < img_length ; i++) {
        for (int j = 0; j < img_width; j++) {
            sum = 0;
            for (int k = 0; k < fil_size; k++) {
                for (int l = 0; l < fil_size; l++) {
                    sum += padded_image[i + k][j + l] * filter[k][l];
                }
            }
            conv_img[i][j] = sum;
        }
    }
}

