
v<-read.csv('data_import_1.csv')
#data_import_1.csv

criteria_weights=v

v<-read.csv('data_import_2.csv')
#data_import_2.csv
decision_matrix=v


# dataframe1$A1<-NA
# dataframe1$A2<-NA
# dataframe1$A3<-NA
# dataframe1

#####################################################################################
# J positive
#####################################################################################


element_count_A1A2=NA
element_count_A1A3=NA
element_count_A2A1=NA
element_count_A2A3=NA
element_count_A3A1=NA
element_count_A3A2=NA





count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+1,6]>decision_matrix[(count-1)*3+2,6])
  {
    element_count_A1A2<-c(element_count_A1A2,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+1,6]>decision_matrix[(count-1)*3+3,6])
  {
    element_count_A1A3<-c(element_count_A1A3,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+2,6]>decision_matrix[(count-1)*3+1,6])
  {
    element_count_A2A1<-c(element_count_A2A1,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+2,6]>decision_matrix[(count-1)*3+3,6])
  {
    element_count_A2A3<-c(element_count_A2A3,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+3,6]>decision_matrix[(count-1)*3+1,6])
  {
    element_count_A3A1<-c(element_count_A3A1,count)
  }
  count=count+1;
}




count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+3,6]>decision_matrix[(count-1)*3+2,6])
  {
    element_count_A3A2<-c(element_count_A3A2,count)
  }
  count=count+1;
}


j_positive<-list(a1a2=element_count_A1A2,a1a3=element_count_A1A3,a2a1=element_count_A2A1,a2a3=element_count_A2A3,a3a1=element_count_A3A1,a3a2=element_count_A3A2)




#####################################################################################
# J negative
#####################################################################################


element_count_A1A2=NA
element_count_A1A3=NA
element_count_A2A1=NA
element_count_A2A3=NA
element_count_A3A1=NA
element_count_A3A2=NA





count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+1,6]<decision_matrix[(count-1)*3+2,6])
  {
    element_count_A1A2<-c(element_count_A1A2,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+1,6]<decision_matrix[(count-1)*3+3,6])
  {
    element_count_A1A3<-c(element_count_A1A3,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+2,6]<decision_matrix[(count-1)*3+1,6])
  {
    element_count_A2A1<-c(element_count_A2A1,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+2,6]<decision_matrix[(count-1)*3+3,6])
  {
    element_count_A2A3<-c(element_count_A2A3,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+3,6]<decision_matrix[(count-1)*3+1,6])
  {
    element_count_A3A1<-c(element_count_A3A1,count)
  }
  count=count+1;
}




count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+3,6]<decision_matrix[(count-1)*3+2,6])
  {
    element_count_A3A2<-c(element_count_A3A2,count)
  }
  count=count+1;
}


j_negative<-list(a1a2=element_count_A1A2,a1a3=element_count_A1A3,a2a1=element_count_A2A1,a2a3=element_count_A2A3,a3a1=element_count_A3A1,a3a2=element_count_A3A2)





#####################################################################################
# J equal to
#####################################################################################


element_count_A1A2=NA
element_count_A1A3=NA
element_count_A2A1=NA
element_count_A2A3=NA
element_count_A3A1=NA
element_count_A3A2=NA





count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+1,6]==decision_matrix[(count-1)*3+2,6])
  {
    element_count_A1A2<-c(element_count_A1A2,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+1,6]==decision_matrix[(count-1)*3+3,6])
  {
    element_count_A1A3<-c(element_count_A1A3,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+2,6]==decision_matrix[(count-1)*3+1,6])
  {
    element_count_A2A1<-c(element_count_A2A1,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+2,6]==decision_matrix[(count-1)*3+3,6])
  {
    element_count_A2A3<-c(element_count_A2A3,count)
  }
  count=count+1;
}



count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+3,6]==decision_matrix[(count-1)*3+1,6])
  {
    element_count_A3A1<-c(element_count_A3A1,count)
  }
  count=count+1;
}




count<-1


while(count<=6)
{
  
  if(decision_matrix[(count-1)*3+3,6]==decision_matrix[(count-1)*3+2,6])
  {
    element_count_A3A2<-c(element_count_A3A2,count)
  }
  count=count+1;
}


j_equal<-list(a1a2=element_count_A1A2,a1a3=element_count_A1A3,a2a1=element_count_A2A1,a2a3=element_count_A2A3,a3a1=element_count_A3A1,a3a2=element_count_A3A2)




#####################################################################################
# Calculating P+
#####################
################################################################

p_positive=data.frame()

p_positive['A1','A1']=0
p_positive['A1','A2']=0
p_positive['A1','A3']=0
p_positive['A2','A1']=0
p_positive['A2','A2']=0
p_positive['A2','A3']=0
p_positive['A3','A1']=0
p_positive['A3','A2']=0
p_positive['A3','A3']=0


for(i in 2:length(j_positive[['a1a2']]))
{
  print(criteria_weights[ j_positive[['a1a2']][i],5])
  p_positive['A1','A2']=p_positive['A1','A2']+criteria_weights[ j_positive[['a1a2']][i],5]
}


for(i in 2:length(j_positive[['a1a3']]))
{
  print(criteria_weights[ j_positive[['a1a3']][i],5])
  p_positive['A1','A3']=p_positive['A1','A3']+criteria_weights[ j_positive[['a1a3']][i],5]
}

for(i in 2:length(j_positive[['a2a1']]))
{
  print(criteria_weights[ j_positive[['a2a1']][i],5])
  p_positive['A2','A1']=p_positive['A2','A1']+criteria_weights[ j_positive[['a2a1']][i],5]
}

for(i in 2:length(j_positive[['a2a3']]))
{
  print(criteria_weights[ j_positive[['a2a3']][i],5])
  p_positive['A2','A3']=p_positive['A2','A3']+criteria_weights[ j_positive[['a2a3']][i],5]
}

for(i in 2:length(j_positive[['a3a1']]))
{
  print(criteria_weights[ j_positive[['a3a1']][i],5])
  p_positive['A3','A1']=p_positive['A3','A1']+criteria_weights[ j_positive[['a3a1']][i],5]
}

for(i in 2:length(j_positive[['a3a2']]))
{
  print(criteria_weights[ j_positive[['a3a2']][i],5])
  p_positive['A3','A2']=p_positive['A3','A2']+criteria_weights[ j_positive[['a3a2']][i],5]
}



#####################################################################################
# Calculating P-
#####################################################################################


p_negative=data.frame()

p_negative['A1','A1']=0
p_negative['A1','A2']=0
p_negative['A1','A3']=0
p_negative['A2','A1']=0
p_negative['A2','A2']=0
p_negative['A2','A3']=0
p_negative['A3','A1']=0
p_negative['A3','A2']=0
p_negative['A3','A3']=0


for(i in 2:length(j_negative[['a1a2']]))
{
  print(criteria_weights[ j_negative[['a1a2']][i],5])
  p_negative['A1','A2']=p_negative['A1','A2']+criteria_weights[ j_negative[['a1a2']][i],5]
}


for(i in 2:length(j_negative[['a1a3']]))
{
  print(criteria_weights[ j_negative[['a1a3']][i],5])
  p_negative['A1','A3']=p_negative['A1','A3']+criteria_weights[ j_negative[['a1a3']][i],5]
}

for(i in 2:length(j_negative[['a2a1']]))
{
  print(criteria_weights[ j_negative[['a2a1']][i],5])
  p_negative['A2','A1']=p_negative['A2','A1']+criteria_weights[ j_negative[['a2a1']][i],5]
}

for(i in 2:length(j_negative[['a2a3']]))
{
  print(criteria_weights[ j_negative[['a2a3']][i],5])
  p_negative['A2','A3']=p_negative['A2','A3']+criteria_weights[ j_negative[['a2a3']][i],5]
}

for(i in 2:length(j_negative[['a3a1']]))
{
  print(criteria_weights[ j_negative[['a3a1']][i],5])
  p_negative['A3','A1']=p_negative['A3','A1']+criteria_weights[ j_negative[['a3a1']][i],5]
}

for(i in 2:length(j_negative[['a3a2']]))
{
  print(criteria_weights[ j_negative[['a3a2']][i],5])
  p_negative['A3','A2']=p_negative['A3','A2']+criteria_weights[ j_negative[['a3a2']][i],5]
}


#####################################################################################
# Calculating P=
#####################################################################################


p_equal=data.frame()

p_equal['A1','A1']=0
p_equal['A1','A2']=0
p_equal['A1','A3']=0
p_equal['A2','A1']=0
p_equal['A2','A2']=0
p_equal['A2','A3']=0
p_equal['A3','A1']=0
p_equal['A3','A2']=0
p_equal['A3','A3']=0

print("length of a1a2=")
print(length(j_equal[['a1a2']]))
if(length(j_equal[['a1a2']])>1)
{
  
  
  for(i in 2:length(j_equal[['a1a2']]))
  {
    print(criteria_weights[ j_equal[['a1a2']][i],5])
    p_equal['A1','A2']=p_equal['A1','A2']+criteria_weights[ j_equal[['a1a2']][i],5]
  }
  
}


if(length(j_equal[['a1a3']])>1)
{
  
  for(i in 2:length(j_equal[['a1a3']]))
  {
    print(criteria_weights[ j_equal[['a1a3']][i],5])
    p_equal['A1','A3']=p_equal['A1','A3']+criteria_weights[ j_equal[['a1a3']][i],5]
  }
  
  
}


if(length(j_equal[['a2a1']])>1)
{
  
  for(i in 2:length(j_equal[['a2a1']]))
  {
    print(criteria_weights[ j_equal[['a2a1']][i],5])
    p_equal['A2','A1']=p_equal['A2','A1']+criteria_weights[ j_equal[['a2a1']][i],5]
  }
  
  
}

if(length(j_equal[['a2a3']])>1)
{
  
  
  for(i in 2:length(j_equal[['a2a3']]))
  {
    print(criteria_weights[ j_equal[['a2a3']][i],5])
    p_equal['A2','A3']=p_equal['A2','A3']+criteria_weights[ j_equal[['a2a3']][i],5]
  }
  
}

if(length(j_equal[['a3a1']])>1)
{
  
  for(i in 2:length(j_equal[['a3a1']]))
  {
    print(criteria_weights[ j_equal[['a3a1']][i],5])
    p_equal['A3','A1']=p_equal['A3','A1']+criteria_weights[ j_equal[['a3a1']][i],5]
  }
  
  
}

if(length(j_equal[['a3a2']])>1)
{
  
  for(i in 2:length(j_equal[['a3a2']]))
  {
    print(criteria_weights[ j_equal[['a3a2']][i],5])
    p_equal['A3','A2']=p_equal['A3','A2']+criteria_weights[ j_equal[['a3a2']][i],5]
  }
  
}



------------------------------------------------------------------------------
  #Concordance Index(CI):
  ------------------------------------------------------------------------------
  
  # CI=data.frame()
  # 
  # CI['A1','A1']=0
  # CI['A1','A2']=0
  # CI['A1','A3']=0
  # CI['A2','A1']=0
  # CI['A2','A2']=0
  # CI['A2','A3']=0
  # CI['A3','A1']=0
  # CI['A3','A2']=0
# CI['A3','A3']=0

CI=list()
CI=(p_positive+p_equal)/(p_positive+p_negative+p_equal)


union_a1a2=union(j_positive[['a1a2']],j_equal[['a1a2']])
union_a1a3=union(j_positive[['a1a3']],j_equal[['a1a3']])
union_a2a1=union(j_positive[['a2a1']],j_equal[['a2a1']])
union_a2a3=union(j_positive[['a2a3']],j_equal[['a2a3']])
union_a3a1=union(j_positive[['a3a1']],j_equal[['a3a1']])
union_a3a2=union(j_positive[['a3a2']],j_equal[['a3a2']])


------------------------------------------------------------------------------
  #Set of concordance:
  ------------------------------------------------------------------------------
j_union=list()
j_union=list(a1a2=union_a1a2,a1a3=union_a1a3,a2a1=union_a2a1,a2a3=union_a2a3,a3a1=union_a3a1,a3a2=union_a3a2)


------------------------------------------------------------------------------
  #Discordance index(DI):
  ------------------------------------------------------------------------------

DI=data.frame()
DI=data.frame()
DI['A1','A1']=NA
DI['A1','A2']=0
DI['A1','A3']=0
DI['A2','A1']=0
DI['A2','A2']=NA
DI['A2','A3']=0
DI['A3','A1']=0
DI['A3','A2']=0
DI['A3','A3']=NA


for (i in 1:3)
{
  for (j in 1:3)
  {
    if(j==i)
    {
      next;
    }
    else
      {
        #DI[paste('A',toString(i),sep=''),paste('A',toString(j),sep='')]=0.25*    }
        #print(paste('a',toString(i),'a',toString(j),sep=''))
        set=j_negative[paste('a',toString(i),'a',toString(j),sep='')]
        if(length(set[[1]])==1)
        {
          next;
        }
        print(set)

        for (k in set)
        {
            var=0
            print("i=")
            print(i)
            print("j=")
            print(j)
            var=decision_matrix[(k-1)*3+j,6]-decision_matrix[(k-1)*3+i,6]
            print("var=")
            var=var[-1]
            print(var)


        }
        print('maxx=')
        maxx=max(var)
        print(toString(max(var)))


      }
    print(j)
    DI[paste('A',toString(i),sep=''),paste('A',toString(j),sep='')]=0.25*maxx

  }
}


#------------------------------------------------------------------------------
#Filtering the alternatives
#------------------------------------------------------------------------------

ct=0.8
dt=0.3


for (i in 1:3)
{
  for (j  in 1:3)
  {
    if(i==j)
    {
      next
    }
    else
    {
    if(DI[paste('A',toString(i),sep=''),paste('A',toString(j),sep='')]<=0.3 )
  {
      if(CI[paste('A',toString(i),sep=''),paste('A',toString(j),sep='')]>=0.8 )
      {
        print(paste(toString(i),'---->',toString(j)))
      }
  }
}
}
}