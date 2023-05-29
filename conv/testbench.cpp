#include "header.hpp"
#include <iostream>
using namespace std;
int main() {

    int image[img_length][img_width] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };

    int filter[fil_size][fil_size] = { 0, 1, 0, 0, 1, 0, 0, 1, 0 };

    int conv_img[img_length][img_width];

    conv(image, filter, conv_img);

    for (int i = 0; i < img_length; i++)
    {

        for (int j = 0; j < img_width; j++)
        {
            cout << conv_img[i][j] << " ";
        }
        cout << endl;
    }

}
