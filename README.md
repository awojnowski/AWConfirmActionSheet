AWConfirmActionSheet
====================

A block based action sheet for confirming destructive actions.

Installation
------------

**Cocoapods**

    pod 'AWConfirmActionSheet', :git => 'https://github.com/awojnowski/AWConfirmActionSheet.git'

Example
-------

    AWConfirmActionSheet *confirmActionSheet = [[AWConfirmActionSheet alloc] initWithTitle:@"Do something destructive?" cancelButtonTitle:@"Cancel" destructiveButtonTile:@"Do It"];
    [confirmActionSheet setConfirmBlock:^{
        
        NSLog(@"Destructive action confirmed!");
        
    }];
    [confirmActionSheet setCancelBlock:^{
        
        NSLog(@"Cancelled!");
        
    }];
    [confirmActionSheet showInView:[self view]];

Screenshot
----------

![Screenshot](http://i.imgur.com/NrYYiY3.png "Screenshot")