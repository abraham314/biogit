library("seqinr")

#DB disponibles
choosebank()

#Ejemplo de seq para virus Dengue
choosebank("refseqViruses")
Dengue1 <- query("Dengue1", "AC=NC_001477")

attributes(Dengue1)
Dengue1$name
Dengue1$nelem
Dengue1$req
dengueseq <- getSequence(Dengue1$req[[1]])
annots <- getAnnot(Dengue1$req[[1]])
closebank()
annots[1:20]
write.fasta(dengueseq, Dengue1$name, "dengue1.fasta")

dengue <- read.fasta(file = "/home/mb45296/bioinformatica/S04/Data/dengue1.fasta")
dengueseq <- dengue[[1]]
table(dengueseq)
GC(dengueseq)

count(dengueseq, 1)
count(dengueseq, 2)
count(dengueseq, 3)#codones
count(dengueseq, 4) #CTAG torsión en el DNA

denguetable <- count(dengueseq,1)

choosebank("genbank")

haem<-query("haemophilus","AC=L42023")
attributes(haem)

haemseq <- getSequence(haem$req[[1]])
hannots <- getAnnot(haem$req[[1]])
closebank()
hannots[1:20]
write.fasta(haemseq, haem$name, "haem.fasta")

inf <- read.fasta(file = "haem.fasta")
infseq <- inf[[1]]
table(infseq)
GC(infseq)

count(infseq, 3)
count(infseq, 4)
count(infseq,5)