
subj = 1:10;
freq = [213,37,329,154,16,90,38,50,34,49];


b = bar(subj,freq);
xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')
xlabel('Subject')
ylabel('Frequency')
title('Frequency of Instance Per Subjects')
