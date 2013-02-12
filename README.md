UISegmentedControl-resizeToFitTitles
====================================

Resize UISegmentedControl to fit text after calling setTitle:forSegmentAtIndex:

Usage
=====

Include `UISegmentedControl+resizeToFitTitles.h` to your sources.
Call resizeToFitTitles after changing title of segment.

    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"One", @"Three"]];
    [segmentedControl setTitle:@"Two" forSegmentAtIndex:1];
    [segmentedControl resizeToFitTitles];
