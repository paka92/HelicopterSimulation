function [] = readHingeOffset()
% Returns HingeOffset
hingeoffsetFile =fopen('..\..\Resource\Blade\Structural\HingeOffset.txt','r');
readText = textscan(hingeoffsetFile,'%f ',-1,'CommentStyle','#');
fclose(hingeoffsetFile);
%AssingHingeOffset to a variable
assignin('base','HingeOffsetNonDim',readText{1}(1));
end

