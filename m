Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB16407695
	for <lists+linux1394-devel@lfdr.de>; Sat, 11 Sep 2021 14:25:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mP24h-00008I-2K; Sat, 11 Sep 2021 12:25:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <grace_j@oh-university.live>) id 1mP24f-00007v-6Z
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Sep 2021 12:25:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Id:List-Unsubscribe:Content-Type:MIME-Version:
 To:Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MMHyiOzrvwx47GULlR5A1JiXKq/btQHAzSKx1rN4o4k=; b=m4zq++Y2ZFSZCUFEnLcbid/z65
 DF5F2E5czk9du9MtAFt2lvf3IjSrGriSQQTCM089tfveGV36rARQY49rWHNDi/zlqR90TCl9Vz5YN
 7aWVoaYGiDQgoRdCyDSOyKC0xrW/kuIfNThQBlCv1qnQ11Ccim+SpAKZ6C/cn2jiD99o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Id:List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:
 Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MMHyiOzrvwx47GULlR5A1JiXKq/btQHAzSKx1rN4o4k=; b=W
 9Ssr0QGP1tqYNC0oikZV6aGbEDpGwJGc8hZcktiKqECL9oXdfiw9O7ieKWs7xN5bo0W1oOtMSen1X
 9yfC//pbwd2LDRjrex8kcAFXzB35za2hgqNL27AZzuSiqmQpQGKmF2aWvyXNgai2oXunQWdDhqle+
 s28Tct0WBNmVYzIw=;
Received: from oh-university.live ([143.244.162.94])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mP24c-0078Vr-4T
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Sep 2021 12:25:37 +0000
Received: from oh-university.live (localhost [127.0.0.1])
 by oh-university.live (Postfix) with ESMTPS id 9A552837EB
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 11 Sep 2021 12:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=oh-university.live;
 s=202108; t=1631361964;
 bh=MMHyiOzrvwx47GULlR5A1JiXKq/btQHAzSKx1rN4o4k=;
 h=Date:Subject:From:Reply-To:To:List-Unsubscribe:List-Id:From;
 b=bvDP3iwbHj57kqjLWddE7UoJDE/CHKcaBD5r9I1HNMDk2VNYW2k178rq2F/RS2b+7
 gcHp9l+Qm/4Jn7foWfkXY2hrWYUvD3r2Abs9ht8bVTIHXsHSRGHe0qkThIQAnx2xpE
 7Oary6tLno46YNvQsnP8aLVBgEFYdpe8oSezoHEBAqTUlyGR+e3VxCWBUD13oKpo+s
 B+AJl317jggetZCdKVuOKRgpLtF9XeBUbCDEVdtnzcdxywW9kHbfNFbdv+bsc3ewGP
 aEa4UOifBtLMG3gj8UcOFIfK5fO2I893T4agzpicMoe6uSEIPGUpdm/wPzQ24aHrxF
 BKnohv4TxYN7Q==
Message-ID: <77774e6f801d7c738af794584ef20c6d7c5ba831@oh-university.live>
Date: Sat, 11 Sep 2021 12:06:04 +0000
Subject: Would you look this over?
From: Grace Johnson <grace_j@oh-university.live>
To: "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
MIME-Version: 1.0
X-Tracking-Did: 0
X-Subscriber-Uid: rz507rltj7c2f
X-Report-Abuse: Please report abuse for this campaign here:
 http://oh-university.live/index.php/campaigns/da625rwyhx177/report-abuse/kz027klmx43f5/rz507rltj7c2f
X-Mailer: SwiftMailer - 5.4.x
X-EBS: http://oh-university.live/index.php/lists/block-address
X-Delivery-Sid: 1
X-Customer-Uid: dr899p7t8v87d
X-Customer-Gid: 0
X-Campaign-Uid: da625rwyhx177
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Feedback-ID: da625rwyhx177:rz507rltj7c2f:kz027klmx43f5:dr899p7t8v87d
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: How's it been? I want to share a message that has been
 spreading
 all over the internet that concerns the times we are living in. Whether you
 believe in God or not, this is a must read message! We can [...] 
 Content analysis details:   (3.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: oh-university.live]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: oh-university.live]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
 blocklist [URIs: bible-woke.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
X-Headers-End: 1mP24c-0078Vr-4T
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Grace Johnson <grace_j@oh-university.live>
Content-Type: multipart/mixed; boundary="===============3281902911468160883=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============3281902911468160883==
Content-Type: multipart/alternative;
 boundary="_=_swift_1631361964_c92f395cc7b807fa7f713ba5b47f39a0_=_"


--_=_swift_1631361964_c92f395cc7b807fa7f713ba5b47f39a0_=_
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

How's it been?
I want to share a message that has been spreading all over=
 the
internet that concerns the times we are living in. Whether you belie=
ve
in God or not, this is a must read message!
We can see throughout ti=
me how we have been slowly conditioned to come
to this point where we are=
 on the verge of a cashless society. Would
it surprise you to know that t=
he Bible foretold of this event? Don't
believe me? This may be the most i=
mporant message you will read in
these times...please do not ignore this!=

This messsage reveals what the Mark of the Beast is, and the meaning
b=
ehind counting a number people have been pondering for centuries,
666. Th=
is message also shares why Barack Obama is the Antichrist as
well as the =
gospel message. This is truly a message from God!
In the Revelation of Je=
sus Christ given to the apostle John, we read:
..."Also he (the false pro=
phet who deceives many by his miracles)
compels all, the small and the gr=
eat, and the rich and the poor, and
the free men and the slaves, to be gi=
ven a mark on their right hand or
on their forehead signifying allegiance=
 to the beast, and that no one
will be able to buy or sell, except the on=
e who has the mark, either
the name of the beast or the number of his nam=
e. Here is wisdom. Let
the person who has enough insight calculate the nu=
mber of the beast,
for it is the number of a man; and his number is six h=
undred and
sixty-six" (Revelation 13:16-18 AMP)....
Referring to the la=
st generation, this could only be speaking of a
cashless society. Why? Re=
velation 13:17 tells us that we cannot buy or
sell unless we receive the =
mark of the beast. If physical money was
still in use, we could buy or se=
ll with one another without receiving
the mark. This would contradict scr=
ipture. So, it deduces itself to
this conclusion.
These verses could no=
t be referring to something spiritual as
scripture references two physica=
l locations (our right-hand or
forehead) stating the mark will be on one =
"OR" the other. It once
again deduces itself to this conclusion.
Also, =
how could you determine who truly has a spiritual mark so that
they may b=
uy or sell? And, as you will read further in this message,
to have the ma=
rk of the beast is the same to have the name of the
beast, and the number=
 of its name. You will begin to see even more
clearly why this mark canno=
t be something purely spiritual.
Here is where it really starts to come t=
ogether. It is shocking how
accurate the Bible is concerning the RFID mic=
rochip. These are notes
from a man named Carl Sanders who worked with a t=
eam of engineers to
help develop this microchip in the late 1960's.
Car=
l Sanders attended seventeen New World Order meetings with heads of
state=
 officials such as Henry Kissinger and Bob Gates of the C.I.A. to
talk ab=
out plans on how to bring forth this one-world system. The US
government =
commissioned Carl Sanders to engineer a microchip for
identifying and con=
trolling the peoples of the world-a microchip that
could be placed under =
the skin with a hypodermic needle (a quick,
convenient method that would =
be progressively accepted by the world).
Carl Sanders, along with a group=
 of engineers behind him, with US
grant monies provided by tax dollars, t=
ook on this project and
engineered a RFID microchip that is powered by a =
lithium battery,
rechargeable by means of the temperature fluctuations in=
 our skin.
With out having knowledge of the Bible (Brother Sanders was no=
t a
believer at the time), these men spent one and a half million dollars=

gathering information on the best and most convenient spot to have the=

RFID microchip placed within the body.
Guess what? These researchers o=
bserved that the forehead and the back
of the hand (the two locations Rev=
elation says the mark will be
received) aren't just the most convenient s=
pots, however are
additionally the only viable locations for fast, steady=
 temperature
fluctuations inside the skin to recharge the lithium battery=
. The RFID
microchip is about seven millimeters in length, .75 millimeter=
s in
diameter, about the size of a grain of rice. It's capable of
conta=
ining pages of details about you. All of your general history,
work recor=
ds, crime records, health records, and financial data can be
saved on thi=
s chip.
Mr. Sanders believes that this RFID microchip, which he regretful=
ly
helped engineer, is the "mark" spoken about in Revelation 13:16-18.
=
The original Greek word for "mark" is "charagma," which means a
"scratch =
or etching." It is also interesting to observe that the
number 666 is a w=
ord in the original Greek language. That word is "chi
xi stigma," with th=
e last word, "stigma," additionally meaning "to
stick or prick. Carl beli=
eves this is referring to the use of a
hypodermic needle being poked into=
 the human flesh to insert the RFID
microchip."
Brother Sanders asked a=
 Boston Medical Center doctor what would happen
if the lithium contained =
within the RFID microchip leaked into the
body. The doctor responded that=
 if the microchip broke inside a human
body, the lithium would cause a se=
vere and painful wound filled with
pus. This is what the scriptures of Re=
velation 16:2 says:
"And the first (angel) went and poured out his bowl o=
n the earth; and
there came an evil and grievous sore upon the men that h=
ad the mark of
the beast, and those who worshipped its image" (Revelation=
 16:2
DARBY).
THE HIDDEN MEANING BEHIND THE NUMBER 666 REVEALED!
What=
 I first want to mention, before I share what the Holy Spirit has
reveale=
d to me concerning the number of the beast, is that God
confirms in three=
s. We can see this throughout scripture:
"For there are three that bear w=
itness in heaven: the Father, the
Word, and the Holy Spirit; and these th=
ree are one" (1 John 5:7 NKJV).
"and that He was buried, and that He rose=
 again the third day
according to the Scriptures" (1 Corinthians 15:4 NKJ=
V).
"...Holy, holy, holy, Lord God Almighty, Who was and is and is to
c=
ome!" (Revelation 4:8 NKJV).
There are many more examples, but I thought =
I would just share three
of them to make the point.
Examining Revelatio=
n 13:16,17,18, the first group of three I would
like to point out is that=
 the mark of the beast is described in three
separate verses, 16, 17 and =
18.
The next three I see is in verse 16, "He causes all..." is followed b=
y
three contrasting categories of people,
1 - "both small and great,
=
2 - rich and poor,
3 - free and slave...".
Then unto verse 17, it opens=
 with, "and that no one may buy or sell
except one who has...", followed =
by three explanations of what one
must have to buy or sell,
1 - "...the=
 mark
2 - or the name of the beast,
3 - or the number of his name".
N=
ow unto verse 18, we read "Let him who has understanding
calculate...", w=
hich is followed by,=C2=A0
1 - "the number of the beast,
2 - for it is =
the number of a man:
3 - His number is 666".
The last three I see is th=
e number "6" being used three times in a
row. The reason I'm making this =
point about God confirming in three is
because it is the key to unlocking=
 how to calculate the number 666.
Throughout the centuries there have bee=
n people trying to calculate
numbers based on titles and names that come =
up to the number 666 to
identify one person, the Antichrist; but from Rev=
elation 13:18, I do
not see where God is telling us to count up to 666, b=
ut rather to
count the number of the beast. This number is identified as =
666. So
the verse is telling us to count the number 666.
What does it m=
ean to count? It means to add up. So how could we add up
666? Remember my=
 previous point about God confirming in threes is key
to unlocking the nu=
mber 666. So logically, what would be the best way
to count the number 66=
6? To count it equally by using the rule of
three based off the number.=

We cannot count it equally as 600+60+6, this would also bring us back
=
to the start.
We cannot count it as 600+600+600, or 60+60+60 because ther=
e are no
zeroes in between or at the end of 666.
The only logical optio=
n is 6+6+6=3D18.
What is interesting is that the verse that reveals for u=
s to count the
number itself is verse 18 (there a total of 18 verses in R=
evelation
Chapter 13), being the third verse out of the three verses that=

describe the mark of the beast in Revelation 13:16,17,18. What is 18
d=
ivided by 3? 6. So 3x6=3D18, or 6+6+6=3D18.
Another interesting point is =
the only two other combinations (making a
total of three possible combina=
tions) for placing a "+" symbol in
between 666 are:
=E2=80=A2 66+6=3D72=
 and 6+66=3D72.
=E2=80=A2 Add both 72's together and you get 144.
Why t=
he number 144 is worth our attention is because the verse
following Revel=
ation 13:18 is the first time in the Bible where the
144,000 are being de=
scribed in detail:
"Then I looked, and behold, a Lamb standing on Mount Z=
ion, and with
Him one hundred and forty-four thousand, having His Father=
=E2=80=99s name
written on their foreheads..." (Revelation 14:1).
Now i=
f you add up all three numbers from counting 666 by moving the
"+" symbol=
 around, it would be 72+72+18=3D162. What is compelling about
the number =
162, is, if you divide 144,000 by 162, you get 888. The
name of Jesus in =
Greek gematria adds up to 888. The New Testament was
originally written i=
n the Greek language. Revelation 14:1 not only
mentions the 144,000, but =
also the Lamb who is Jesus.
Now what is interesting about the number for =
Jesus, 888, is that if
you apply the same formula that was used to count =
666, you get
8+8+8=3D24. Why the number 24? Revelation chapter 4 tells us=
 there are
24 elders seated around the throne of God. This is the same th=
rone
where Jesus sits.
Now if you take:
=E2=80=A2 8+8+8=3D24
=
=E2=80=A2 8+88=3D96
=E2=80=A2 88+8=3D96
you get 24+96+96=3D216.
Take =
144,000 divided by 216 and you get 666.
Remember that this was the same e=
xact formula we used to count the
number 666 that ultimately brought fort=
h the number 888.
Here is a quick recap to demonstrate how this formula c=
onfirms itself
as being the true way to count 666:
1: 6+6+6=3D18 =C2=
=BB 66+6=3D72 =C2=BB 6+66=3D72 =C2=BB 18+72+72=3D162
2: 144,000 divided b=
y 162=3D888
3: 8+8+8=3D24 =C2=BB 88+8=3D96 =C2=BB 8+88=3D96 =C2=BB 24+96+=
96=3D216
4: 144,000 divided by 216=3D666
1: 6+6+6=3D18 =C2=BB 66+6=3D72=
...
As you can see, it is perpetual. And remember that we consistently
=
used a formula that worked in threes being the number that God uses
for c=
onfirmation.
When utilizing the same formulation of counting by including=
 the plus
symbol in between the numbers, why do all these numbers relate =
in such
a way?
The book of Revelation contains the use of the number 7 =
in various
forms. For instance 7 seals, 7 trumpets, and 7 bowls. What is=

interesting about the number 37 (three sevens) is if if you divide any=

number that contains the same single digit three times in a row, such
=
as 111 to 999, it comes out to the value of if you were to add all
three =
numbers up. For example 888 divided by 37 equals 24. So
8+8+8=3D24. Or 66=
6 divided by 37 equals 18. So 6+6+6=3D18. Could this be
another way of Go=
d's word confirming itself that the mystery behind
calculating the number=
 666 indeed is 18?
Another interesting point to observe is that if you ad=
d up all of the
numbers from 1 to 36 (1+2+3...+36), it totals 666. The nu=
mber 36, as
in three sixes? Could this be a sign that we need to add up t=
hree
sixes as opposed to perceiving the number as six-hundred sixty six?=

So what might this suggest? We know in this world we are recognized by=

numbers in numerous forms. From our birth certificate to social
securi=
ty, as well as our drivers license, being recognized based on a
system of=
 ruler ship. So it's conceivable that this RFID chip will
comprise a new =
identification that has a complete total of 18
characters.
"here the wi=
sdom is, the one having the mind let him calculate the
number of the wild=
 beast, number for "of human" it is, and the number
of it 666" (Revelatio=
n 13:1, Greek Translation).
The Greek word "anthr=C5=8Dpos" being used in=
 verse 18 where it says "of
human" is the Greek strongs concordance G444.=
 The first two
definitions of the word are "a human being, whether male o=
r female",
and, "generically, to include all human individuals". Could th=
e number
of the beast apply to all mankind?
In the Greek (the New Testa=
ment was originally written in the Greek
language), and other translation=
s, you will notice the beast is
described as an "it", instead of "him". T=
he reason I'm making this
point is because when a translation says "His n=
umber is 666", this
would imply a singular person, the Antichrist. But by=
 saying "the
number of it 666", implies that it is of the beast system as=
 a whole.
We can know the number of the beast cannot be to identify produ=
cts
(like a new barcode) to buy or sell because scripture says we cannot=

buy or sell without the number of the beast. What am I getting at?
The=
re will be instances where you could buy something someone made
themselve=
s and it wouldn't have a store branded identification on it.
But for this=
 number to be in our chips, that is where it must be to
conclude ultimate=
ly that we cannot buy or sell without having the
number of the beast. As =
previously mentioned in Revelation 13:18, the
number of the beast (6+6+6=
=3D18) is a "human number", definition
"generically, to include all human=
 individuals".
Could this be the identification of the beast, the number =
of its name?
The one-world beast system which is recognized by 18 charact=
ers? This
could match the scriptures that speaks of a mark that we ought =
to have
to buy or sell in our right hand or forehead, and that it additio=
nally
consists of the number of the beast, during a future cashless money=

society.
Here is another mathematical confirmation: 144,000 divided by=
 6,
divided by 6, divided by 6 (6,6,6) equals 666. To see many more of
=
these amazing calculations, read the article about the RFID Mark of
the B=
east and the number 666...
Do we believe blind forces gave us eyes to see=
? That deaf forces gave
us ears to hear? That careless forces gave us a h=
eart to care for
others? That faithless forces uphold the universe and al=
l the laws
that govern it and that is why we should trust them? That mind=
less
forces gave us a mind to think and comprehend these things? If there=

is a God, He must be personal, because we as His creation are personal=

beings. How do we get to personally know anybody? By their word...The
=
words of Jesus have been translated into over 2,000 languages, and
nothin=
g comes remotely close (the Quran about 110). If that is not
God's word, =
nothing is. Why? Why would a personal loving God who
desires for us to kn=
ow Him, who is all powerful, allow man to create a
word far surperior tha=
n His to be spread around the world throughout
time in so many different =
languages to deceive the world so we may not
know the truth about Him?
=
God has shown me some time ago that Trump will have a second term (he
wil=
l be back soon!), and that this will be the time where the two
witnesses =
of Revelation 11 will rise up (who are the 144,000) to
prophesy for 42 mo=
nths to every tribe, tongue, nation and people
before the beast rises fro=
m the sea in Revelation 13. We will see His
Holy Spirit move across the w=
orld in a mighty way bringing a great
multitude to God. God gave me a vis=
ion that Obama will be back in
2024.
To see much more, go to: http://go=
.bible-woke.org
[http://oh-university.live/index.php/campaigns/[CAMPAIGN_=
UID/track-url/rz507rltj7c2f/9724f64d860bb8fa4f77712b3ea12eac1fd24058]|http:=
//news.bible-woke.org
[http://oh-university.live/index.php/campaigns/da62=
5rwyhx177/track-url/rz507rltj7c2f/37db1bffc993e4eb09f894ffb9fb30d015c7e877]=
|http://tv.bible-woke.org
[http://oh-university.live/index.php/campaigns/=
da625rwyhx177/track-url/rz507rltj7c2f/2bde4a4e11b1e77724fe213046106d19cad2d=
91c]|http://go.bible-now.org
[http://oh-university.live/index.php/campaig=
ns/da625rwyhx177/track-url/rz507rltj7c2f/747ecf3078288b9cbe78532a99690f295c=
b1b2ba]|http://news.bible-now.org
[http://oh-university.live/index.php/ca=
mpaigns/da625rwyhx177/track-url/rz507rltj7c2f/90c7fd322e2ae972a075685623abc=
152fe0201a1]|http://tv.bible-now.org
[http://oh-university.live/index.php=
/campaigns/da625rwyhx177/track-url/rz507rltj7c2f/fe4264ddd6147c86c3c9c88b75=
27f7c44dcdb5f3]|http://go.bible-today.org
[http://oh-university.live/inde=
x.php/campaigns/da625rwyhx177/track-url/rz507rltj7c2f/bddb22038c1a00d16d6aa=
f9ccb49818982897dff]|http://news.bible-today.org
[http://oh-university.li=
ve/index.php/campaigns/da625rwyhx177/track-url/rz507rltj7c2f/79f0f02f19e412=
e0e1d70ab9116225c6c92ad7c8]|http://tv.bible-today.org
[http://oh-universi=
ty.live/index.php/campaigns/da625rwyhx177/track-url/rz507rltj7c2f/a0630a629=
6e6927b31ac8d0f2a715483579778df]]
to see all the proof!
If you feel led=
 to, please forward this email to your friends and
family so they may kno=
w that God is moving in these times in mighty
ways, even through His prop=
hets to proclaim the truth of His word to
the ends of the earth. God bles=
s!
"Why did the Biden campaign choose 30330? 2020 divided by 666 =3D 3.03=
30
Who believes this to be a coincidence? October 2020 Isaiah 53:6
Some=
one said we are being whipsawed in 2020. Truly a great division is
taking=
 place between good and evil=E2=80=94both symbolically and literally
(rio=
ts, unrest, politics). If you take the current year 2020 and
divide it by=
 the number 666 (known for its satanic implications) you
will get the num=
ber 30330 (repeated). This number 30330 happens to be
the number used to =
vote for Joe Biden and Kamala Harris. Freaky?
Supernatural? Odd for sure.=
 Whatever this means, it doesn=E2=80=99t seem
good to me. First, why woul=
d anyone knowingly choose those particular
numbers for their campaign? If=
 they weren=E2=80=99t knowingly chosen, then
it appears to be a supernatu=
ral act by the evil one himself and I
would want to change those numbers =
ASAP. And if the numbers were
chosen knowing their significance, are you =
satanic? Is this campaign
satanic? Either way I do not believe this is a =
coincidence. And one
thing is certain, 2020 is truly being divided by Sat=
an. He is the
master deceiver and spreader of chaos. Jesus calls him the =
father of
lies."
So I looked up this number 30330 concerning Joe Biden,=
 and I found
this information:=C2=A0
If you send a text to that number =
(at that time), you would get a
response asking to support Joe's campaign=
 to take down Donald Trump,
with one part in caps saying "CHIP IN >>" poi=
nting to a link to go and
donate.
"CHIP IN"? Obama has used this phrase=
 in the past on his twitter and
people believe it is a subliminal message=
 to receive the mark of the
beast, that is to say the implantable RFID mi=
croCHIP that will go IN
our body.
The Holy scriptures warns us in the l=
ast days that a false prophet
will stand up performing miraculous signs d=
eceiving many to receive
the beasts mark:
..."Then the beast was captur=
ed, and with him the false prophet who
worked signs in his presence, by w=
hich he deceived those who received
the mark of the beast and those who w=
orshiped his image" (Revelation
19:20)...
No matter the cost, DO NOT TA=
KE IT!
"Then a third angel followed them, saying with a loud voice, "If=

anyone worships the beast and his image, and receives his mark on his
=
forehead or on his hand, he himself shall also drink of the wine of
the w=
rath of God, which is poured out full strength into the cup of
His indign=
ation. He shall be tormented with fire and brimstone in the
presence of t=
he holy angels and in the presence of the Lamb. And the
smoke of their to=
rment ascends forever and ever; and they have no rest
day or night, who w=
orship the beast and his image, and whoever
receives the mark of his name=
" (Revelation 14:9-11).
We're living in very prophetic times with major B=
iblical prophecies
being fulfilled.
When Donald Trump recognized Jerusa=
lem as capital of Israel on
December 6 2017, this was a big step to fulfi=
ll the Third Temple
foretold in the words of God.
The scriptures alerts=
 us that the Antichrist will seat himself in this
temple:
"...and the m=
an of sin is revealed, the son of perdition, who opposes
and exalts himse=
lf above all that is called God or that is worshiped,
so that he sits as =
God in the temple of God, showing himself that he
is God" (2 Thessalonian=
s 2:3-4).
Within the Islamic faith, they have a figure known as the Mahdi=
, known
as their messiah who they are waiting to be revealed. There are a=

number of testimonies from people on the internet who imagine this man=

shall be Barack Obama who is to be the biblical Antichrist. I have had=

strange dreams (you can read them in my article on the website above)
=
about Barack. He got on stage declaring himself to be a follower of
Chris=
t with no affiliation to the Muslim religion, but was later
revealed by h=
is circle of relatives that he indeed is a religious
Muslim.
So what's =
in the name? The meaning of someones name can say a lot
about a person. G=
od throughout history has given names to people that
have a specific mean=
ing tied to their lives. How about the name Barack
Obama? Let us take a l=
ook at what may be hiding beneath the surface...
Jesus says, "And He said=
 to them, 'I saw Satan fall like lightning
from heaven'" (Luke 10:18).
=
In Hebrew, the word "Barack" means "lighting", and the use of "Bama"
(Str=
ongs Hebrew phrase 1116) is used to refer to the "heights" of
heaven.
=
=C2=A0
The day following the election of Barack Obama (11/04/08), the win=
ning
pick three lotto numbers in Illinois (Obama=E2=80=99s domestic state=
) for
11/5/08 were 666.
Obama was formerly a U.S. senator for Illinois,=
 and his zip code was
60606.
The names of both of Obama's daughters are=
 Malia and Natasha. If we
were to write those names backwards we would ge=
t "ailam ahsatan". Now
if we remove the letters that spell "Alah" (Allah =
being the God of
Islam), we get "I am Satan". Coincidence? I don't think =
so.
These are just a few of many evidences why Barack Obama is the
Anti=
christ. You can see many more in my article on the website above,
as well=
 as read about the dreams I've had concerning this man. I'm
more than con=
vinced that God has shown me that he is without a doubt
the Antichrist, a=
nd we will see him rise to power in the not so
dinstant future.
So, why=
 do we need Jesus Christ?
"for all have sinned and fall short of the glor=
y of God" (Romans
2:23).
"For the wages of sin is death, but the gift o=
f God is eternal life in
Christ Jesus our Lord" (Romans 6:23).
Our good=
 works can't save our souls from the wrong we've committed. If
we step be=
fore a judge, being guilty for committing a crime, the judge
is not going=
 to judge us by the good that we have done, but rather the
crimes we have=
 committed. If we as fallen humanity, created in God's
image, pose this t=
ype of moral justice, how much greater a perfect,
righteous, and Holy God=
?
God has delivered to us His moral regulation's by means of the 10
com=
mandments received by Moses at Mt. Siani. These laws were not given
so we=
 can be justified, however so that we may see the need for our
saviour. T=
hey're the mirror of God's character of what He has put in
each of us, wi=
th our conscious bearing witness that we all know that
it's an act of evi=
l to steal, lie, dishonor our dad and mom, and so
forth.
We can try to =
observe all the moral guidelines of the 10 commandments,
however we'll by=
 no means catch up to them to be justified before a
Holy God. The same wo=
rd of the law given to Moses was brought forth as
flesh over 2000 years a=
go inside the body of Jesus Christ. He came to
be our justification by pe=
rfectly fulfilling the commandments of God,
living a sinless life that on=
ly God could fulfill.
The distance between us and the law of God can by n=
o means be
reconciled by our own personal merit, however the arm of Jesus=
 is
stretched out by the grace and mercy of God. And if we are to seize=

hold of, by means of faith in Him, He will pull us up being the one to=

justify us. As inside the court of law, if somebody steps in and pays
=
your debt, even though you are guilty, the judge can do what is legal
and=
 just and let you go free. That is what Jesus did almost 2000 years
in th=
e past on the cross. It was a legal transaction being fulfilled
inside th=
e spiritual realm by the shedding of His blood, with His last
words being=
, "...It is finished!..." (John 19:30).
So why did Jesus have to die for =
us?
Because God is Holy and just, the wrath that we deserve could not be=

overlooked. Through the perfect righteousness and justice of God's
cha=
racter, it ought to be reconciled, it ought to be quenched and
satisfied.=

For God takes no pleasure in the death of the wicked (Ezekiel 18:23).
=
That is why in Isaiah chapter 53, where it speaks of the coming
Messiah a=
nd His soul being a sacrifice for our sins, why it says it
satisfied God =
to crush His only begotten Son.
That is because the wrath that we deserve=
 was justified by being
poured out upon His Son. For if it were to be pou=
red out upon us who
deserve it, we'd all die and go to hell. God created =
a way of escape
by pouring it out on His Son who's soul could not be left=
 in Hades,
however was raised and seated at the right hand of God in powe=
r.
So now when we put on the Lord Jesus Christ (Romans 13:14), God no
l=
onger looks at the person who deserves His wrath, but rather the
glorious=
 image of His perfect Son residing in us, justifying us as if
we acquired=
 the wrath we deserve, making a way of escape from the
curse of death.
=
Now what we ought to do is repent and believe in the saviour,
confessing =
and turning from our sins. That is not only a head
knowledge of believing=
 in Jesus, instead receiving His words, taking
them to heart. Where we no=
 longer live to exercise sin, however turn
from our sins and exercise rig=
hteousness:
"Do you not know that the unrighteous will not inherit the ki=
ngdom of
God? Do not be deceived. Neither fornicators, nor idolaters, nor=

adulterers, nor homosexuals, nor sodomites, nor thieves, nor covetous,=

nor drunkards, nor revilers, nor extortioners will inherit the kingdom=

of God. And such were some of you. But you were washed, but you were
s=
anctified, but you were justified in the name of the Lord Jesus and
by th=
e Spirit of our God" (1 Corinthians 6:9-11).
By doing so we will come to =
be transformed into the image of God by
means of faith in His Son Christ =
Jesus Who is inclined to give the
Holy Spirit to people who ask of Him:=

"Most assuredly, I (Jesus) say to you, unless one is born of water and=

the Spirit, he cannot enter the kingdom of God. That which is born of
=
the flesh is flesh, and that which is born of the Spirit is spirit. Do
no=
t marvel that I said to you, 'You must be born again.' (John 3:5-6).
"But=
 you are not in the flesh but in the Spirit, if indeed the Spirit
of God =
dwells in you. Now if anyone does not have the Spirit of
Christ, he is no=
t His" (Romans 8:9).
What are you waiting for? Our heavenly Father only w=
ants the best for
us all, restoring everything this world has stolen from=
 us. That is
what it means to be "holy". To be made whole.
He's waiting=
 to listen to you. That God given tongue to speak
language, by way of fai=
th, pray to Him, ask Him to forgive you by
confessing your sins and be wi=
lling to forsake them; that you accept
the sacrifice of His Son Jesus on =
the cross, and that you want His
Holy Spirit living inside you reworking =
you into a child of the living
God.
Jesus says, "but whoever drinks of =
the water that I shall give him
(the Holy Spirit) will never thirst. But =
the water that I shall give
him will become in him a fountain of water sp=
ringing up into
everlasting life."
Did you realize that Jesus spoke mor=
e about hell than any one in the
scriptures, even more than He spoke abou=
t heaven?! For this very cause
He came to die for us, to deliver us from =
this place that we earned by
our sins.
=C2=A0
He describes hell as a =
real place where,
"Their worm does not die
And the fire is not quenched=
" (Mark 9:44).
And where,
"There will be weeping and gnashing of teeth.=
.." (Luke 13:28).
Jesus tells us who to fear,
"And do not fear those wh=
o kill the body but cannot kill the soul. But
rather fear Him who is able=
 to destroy both soul and body in hell"
(Matthew 10:28).
"Now I saw a n=
ew heaven and a new earth, for the first heaven and the
first earth had p=
assed away. Also there was no more sea. Then I, John,
saw the holy city, =
New Jerusalem, coming down out of heaven from God,
prepared as a bride ad=
orned for her husband. And I heard a loud voice
from heaven saying, 'Beho=
ld, the tabernacle of God is with men, and He
will dwell with them, and t=
hey shall be His people. God Himself will
be with them and be their God. =
And God will wipe away every tear from
their eyes; there shall be no more=
 death, nor sorrow, nor crying.
There shall be no more pain, for the form=
er things have passed away.'
Then He who sat on the throne said, 'Behold,=
 I make all things new.'
And He said to me, 'Write, for these words are t=
rue and faithful.'
And He said to me, 'It is done! I am the Alpha and the=
 Omega, the
Beginning and the End. I will give of the fountain of the wat=
er of
life freely to him who thirsts. He who overcomes shall inherit all=

things, and I will be his God and he shall be My son. But the
cowardly=
, unbelieving, abominable, murderers, sexually immoral,
sorcerers, idolat=
ers, and all liars shall have their part in the lake
which burns with fir=
e and brimstone, which is the second death.'"
(Revelation 21:1-8).

--_=_swift_1631361964_c92f395cc7b807fa7f713ba5b47f39a0_=_
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
<head><meta charset=3D"utf-8"/>
=09<title>Would you look this over?</title>
</head>
<body>How's it been?<br />
<br />
I want to share a message that has been spreading all over the internet tha=
t concerns the times we are living in. Whether you believe in God or not, t=
his is a must read message!<br />
<br />
We can see throughout time how we have been slowly conditioned to come to t=
his point where we are on the verge of a cashless society. Would it surpris=
e you to know that the Bible foretold of this event? Don't believe me? This=
 may be the most imporant message you will read in these times...please do =
not ignore this!<br />
<br />
This messsage reveals what the Mark of the Beast is, and the meaning behind=
 counting a number people have been pondering for centuries, 666. This mess=
age also shares why Barack Obama is the Antichrist as well as the gospel me=
ssage. This is truly a message from God!<br />
<br />
In the Revelation of Jesus Christ given to the apostle John, we read:<br />
<br />
..."Also he (the false prophet who deceives many by his miracles) compels a=
ll, the small and the great, and the rich and the poor, and the free men an=
d the slaves, to be given a mark on their right hand or on their forehead s=
ignifying allegiance to the beast, and that no one will be able to buy or s=
ell, except the one who has the mark, either the name of the beast or the n=
umber of his name. Here is wisdom. Let the person who has enough insight ca=
lculate the number of the beast, for it is the number of a man; and his num=
ber is six hundred and sixty-six" (Revelation 13:16-18 AMP)....<br />
<br />
Referring to the last generation, this could only be speaking of a cashless=
 society. Why? Revelation 13:17 tells us that we cannot buy or sell unless =
we receive the mark of the beast. If physical money was still in use, we co=
uld buy or sell with one another without receiving the mark. This would con=
tradict scripture. So, it deduces itself to this conclusion.<br />
<br />
These verses could not be referring to something spiritual as scripture ref=
erences two physical locations (our right-hand or forehead) stating the mar=
k will be on one "OR" the other. It once again deduces itself to this concl=
usion.<br />
<br />
Also, how could you determine who truly has a spiritual mark so that they m=
ay buy or sell? And, as you will read further in this message, to have the =
mark of the beast is the same to have the name of the beast, and the number=
 of its name. You will begin to see even more clearly why this mark cannot =
be something purely spiritual.<br />
<br />
Here is where it really starts to come together. It is shocking how accurat=
e the Bible is concerning the RFID microchip. These are notes from a man na=
med Carl Sanders who worked with a team of engineers to help develop this m=
icrochip in the late 1960's.<br />
<br />
Carl Sanders attended seventeen New World Order meetings with heads of stat=
e officials such as Henry Kissinger and Bob Gates of the C.I.A. to talk abo=
ut plans on how to bring forth this one-world system. The US government com=
missioned Carl Sanders to engineer a microchip for identifying and controll=
ing the peoples of the world-a microchip that could be placed under the ski=
n with a hypodermic needle (a quick, convenient method that would be progre=
ssively accepted by the world).<br />
<br />
Carl Sanders, along with a group of engineers behind him, with US grant mon=
ies provided by tax dollars, took on this project and engineered a RFID mic=
rochip that is powered by a lithium battery, rechargeable by means of the t=
emperature fluctuations in our skin. With out having knowledge of the Bible=
 (Brother Sanders was not a believer at the time), these men spent one and =
a half million dollars gathering information on the best and most convenien=
t spot to have the RFID microchip placed within the body.<br />
<br />
Guess what? These researchers observed that the forehead and the back of th=
e hand (the two locations Revelation says the mark will be received) aren't=
 just the most convenient spots, however are additionally the only viable l=
ocations for fast, steady temperature fluctuations inside the skin to recha=
rge the lithium battery. The RFID microchip is about seven millimeters in l=
ength, .75 millimeters in diameter, about the size of a grain of rice. It's=
 capable of containing pages of details about you. All of your general hist=
ory, work records, crime records, health records, and financial data can be=
 saved on this chip.<br />
<br />
Mr. Sanders believes that this RFID microchip, which he regretfully helped =
engineer, is the "mark" spoken about in Revelation 13:16-18. The original G=
reek word for "mark" is "charagma," which means a "scratch or etching." It =
is also interesting to observe that the number 666 is a word in the origina=
l Greek language. That word is "chi xi stigma," with the last word, "stigma=
," additionally meaning "to stick or prick. Carl believes this is referring=
 to the use of a hypodermic needle being poked into the human flesh to inse=
rt the RFID microchip."<br />
<br />
Brother Sanders asked a Boston Medical Center doctor what would happen if t=
he lithium contained within the RFID microchip leaked into the body. The do=
ctor responded that if the microchip broke inside a human body, the lithium=
 would cause a severe and painful wound filled with pus. This is what the s=
criptures of Revelation 16:2 says:<br />
<br />
"And the first (angel) went and poured out his bowl on the earth; and there=
 came an evil and grievous sore upon the men that had the mark of the beast=
, and those who worshipped its image" (Revelation 16:2 DARBY).<br />
<br />
THE HIDDEN MEANING BEHIND THE NUMBER 666 REVEALED!<br />
<br />
What I first want to mention, before I share what the Holy Spirit has revea=
led to me concerning the number of the beast, is that God confirms in three=
s. We can see this throughout scripture:<br />
<br />
"For there are three that bear witness in heaven: the Father, the Word, and=
 the Holy Spirit; and these three are one" (1 John 5:7 NKJV).<br />
<br />
"and that He was buried, and that He rose again the third day according to =
the Scriptures" (1 Corinthians 15:4 NKJV).<br />
<br />
"...Holy, holy, holy, Lord God Almighty, Who was and is and is to come!" (R=
evelation 4:8 NKJV).<br />
<br />
There are many more examples, but I thought I would just share three of the=
m to make the point.<br />
<br />
Examining Revelation 13:16,17,18, the first group of three I would like to =
point out is that the mark of the beast is described in three separate vers=
es, 16, 17 and 18.<br />
<br />
The next three I see is in verse 16, "He causes all..." is followed by thre=
e contrasting categories of people,<br />
<br />
1 - "both small and great,<br />
2 - rich and poor,<br />
3 - free and slave...".<br />
<br />
Then unto verse 17, it opens with, "and that no one may buy or sell except =
one who has...", followed by three explanations of what one must have to bu=
y or sell,<br />
<br />
1 - "...the mark<br />
2 - or the name of the beast,<br />
3 - or the number of his name".<br />
<br />
Now unto verse 18, we read "Let him who has understanding calculate...", wh=
ich is followed by,=C2=A0<br />
<br />
1 - "the number of the beast,<br />
2 - for it is the number of a man:<br />
3 - His number is 666".<br />
<br />
The last three I see is the number "6" being used three times in a row. The=
 reason I'm making this point about God confirming in three is because it i=
s the key to unlocking how to calculate the number 666.<br />
<br />
Throughout the centuries there have been people trying to calculate numbers=
 based on titles and names that come up to the number 666 to identify one p=
erson, the Antichrist; but from Revelation 13:18, I do not see where God is=
 telling us to count up to 666, but rather to count the number of the beast=
. This number is identified as 666. So the verse is telling us to count the=
 number 666.<br />
<br />
What does it mean to count? It means to add up. So how could we add up 666?=
 Remember my previous point about God confirming in threes is key to unlock=
ing the number 666. So logically, what would be the best way to count the n=
umber 666? To count it equally by using the rule of three based off the num=
ber.<br />
<br />
We cannot count it equally as 600+60+6, this would also bring us back to th=
e start.<br />
<br />
We cannot count it as 600+600+600, or 60+60+60 because there are no zeroes =
in between or at the end of 666.<br />
<br />
The only logical option is 6+6+6=3D18.<br />
<br />
What is interesting is that the verse that reveals for us to count the numb=
er itself is verse 18 (there a total of 18 verses in Revelation Chapter 13)=
, being the third verse out of the three verses that describe the mark of t=
he beast in Revelation 13:16,17,18. What is 18 divided by 3? 6. So 3x6=3D18=
, or 6+6+6=3D18.<br />
<br />
Another interesting point is the only two other combinations (making a tota=
l of three possible combinations) for placing a "+" symbol in between 666 a=
re:<br />
<br />
=E2=80=A2 66+6=3D72 and 6+66=3D72.<br />
<br />
=E2=80=A2 Add both 72's together and you get 144.<br />
<br />
Why the number 144 is worth our attention is because the verse following Re=
velation 13:18 is the first time in the Bible where the 144,000 are being d=
escribed in detail:<br />
<br />
"Then I looked, and behold, a Lamb standing on Mount Zion, and with Him one=
 hundred and forty-four thousand, having His Father=E2=80=99s name written =
on their foreheads..." (Revelation 14:1).<br />
<br />
Now if you add up all three numbers from counting 666 by moving the "+" sym=
bol around, it would be 72+72+18=3D162. What is compelling about the number=
 162, is, if you divide 144,000 by 162, you get 888. The name of Jesus in G=
reek gematria adds up to 888. The New Testament was originally written in t=
he Greek language. Revelation 14:1 not only mentions the 144,000, but also =
the Lamb who is Jesus.<br />
<br />
Now what is interesting about the number for Jesus, 888, is that if you app=
ly the same formula that was used to count 666, you get 8+8+8=3D24. Why the=
 number 24? Revelation chapter 4 tells us there are 24 elders seated around=
 the throne of God. This is the same throne where Jesus sits.<br />
<br />
Now if you take:<br />
<br />
=E2=80=A2 8+8+8=3D24<br />
<br />
=E2=80=A2 8+88=3D96<br />
<br />
=E2=80=A2 88+8=3D96<br />
<br />
you get 24+96+96=3D216.<br />
<br />
Take 144,000 divided by 216 and you get 666.<br />
<br />
Remember that this was the same exact formula we used to count the number 6=
66 that ultimately brought forth the number 888.<br />
<br />
Here is a quick recap to demonstrate how this formula confirms itself as be=
ing the true way to count 666:<br />
<br />
1: 6+6+6=3D18 =C2=BB 66+6=3D72 =C2=BB 6+66=3D72 =C2=BB 18+72+72=3D162<br />
<br />
2: 144,000 divided by 162=3D888<br />
<br />
3: 8+8+8=3D24 =C2=BB 88+8=3D96 =C2=BB 8+88=3D96 =C2=BB 24+96+96=3D216<br />
<br />
4: 144,000 divided by 216=3D666<br />
<br />
1: 6+6+6=3D18 =C2=BB 66+6=3D72...<br />
<br />
As you can see, it is perpetual. And remember that we consistently used a f=
ormula that worked in threes being the number that God uses for confirmatio=
n.<br />
<br />
When utilizing the same formulation of counting by including the plus symbo=
l in between the numbers, why do all these numbers relate in such a way?<br=
 />
<br />
The book of Revelation contains the use of the number 7 in various forms. F=
or instance 7 seals, 7 trumpets, and 7 bowls. What is interesting about the=
 number 37 (three sevens) is if if you divide any number that contains the =
same single digit three times in a row, such as 111 to 999, it comes out to=
 the value of if you were to add all three numbers up. For example 888 divi=
ded by 37 equals 24. So 8+8+8=3D24. Or 666 divided by 37 equals 18. So 6+6+=
6=3D18. Could this be another way of God's word confirming itself that the =
mystery behind calculating the number 666 indeed is 18?<br />
<br />
Another interesting point to observe is that if you add up all of the numbe=
rs from 1 to 36 (1+2+3...+36), it totals 666. The number 36, as in three si=
xes? Could this be a sign that we need to add up three sixes as opposed to =
perceiving the number as six-hundred sixty six?<br />
<br />
So what might this suggest? We know in this world we are recognized by numb=
ers in numerous forms. From our birth certificate to social security, as we=
ll as our drivers license, being recognized based on a system of ruler ship=
. So it's conceivable that this RFID chip will comprise a new identificatio=
n that has a complete total of 18 characters.<br />
<br />
"here the wisdom is, the one having the mind let him calculate the number o=
f the wild beast, number for "of human" it is, and the number of it 666" (R=
evelation 13:1, Greek Translation).<br />
<br />
The Greek word "anthr=C5=8Dpos" being used in verse 18 where it says "of hu=
man" is the Greek strongs concordance G444. The first two definitions of th=
e word are "a human being, whether male or female", and, "generically, to i=
nclude all human individuals". Could the number of the beast apply to all m=
ankind?<br />
<br />
In the Greek (the New Testament was originally written in the Greek languag=
e), and other translations, you will notice the beast is described as an "i=
t", instead of "him". The reason I'm making this point is because when a tr=
anslation says "His number is 666", this would imply a singular person, the=
 Antichrist. But by saying "the number of it 666", implies that it is of th=
e beast system as a whole.<br />
<br />
We can know the number of the beast cannot be to identify products (like a =
new barcode) to buy or sell because scripture says we cannot buy or sell wi=
thout the number of the beast. What am I getting at? There will be instance=
s where you could buy something someone made themselves and it wouldn't hav=
e a store branded identification on it. But for this number to be in our ch=
ips, that is where it must be to conclude ultimately that we cannot buy or =
sell without having the number of the beast. As previously mentioned in Rev=
elation 13:18, the number of the beast (6+6+6=3D18) is a "human number", de=
finition "generically, to include all human individuals".<br />
<br />
Could this be the identification of the beast, the number of its name? The =
one-world beast system which is recognized by 18 characters? This could mat=
ch the scriptures that speaks of a mark that we ought to have to buy or sel=
l in our right hand or forehead, and that it additionally consists of the n=
umber of the beast, during a future cashless money society.<br />
<br />
Here is another mathematical confirmation: 144,000 divided by 6, divided by=
 6, divided by 6 (6,6,6) equals 666. To see many more of these amazing calc=
ulations, read the article about the RFID Mark of the Beast and the number =
666...<br />
<br />
Do we believe blind forces gave us eyes to see? That deaf forces gave us ea=
rs to hear? That careless forces gave us a heart to care for others? That f=
aithless forces uphold the universe and all the laws that govern it and tha=
t is why we should trust them? That mindless forces gave us a mind to think=
 and comprehend these things? If there is a God, He must be personal, becau=
se we as His creation are personal beings. How do we get to personally know=
 anybody? By their word...The words of Jesus have been translated into over=
 2,000 languages, and nothing comes remotely close (the Quran about 110). I=
f that is not God's word, nothing is. Why? Why would a personal loving God =
who desires for us to know Him, who is all powerful, allow man to create a =
word far surperior than His to be spread around the world throughout time i=
n so many different languages to deceive the world so we may not know the t=
ruth about Him?<br />
<br />
God has shown me some time ago that Trump will have a second term (he will =
be back soon!), and that this will be the time where the two witnesses of R=
evelation 11 will rise up (who are the 144,000) to prophesy for 42 months t=
o every tribe, tongue, nation and people before the beast rises from the se=
a in Revelation 13. We will see His Holy Spirit move across the world in a =
mighty way bringing a great multitude to God. God gave me a vision that Oba=
ma will be back in 2024.<br />
<br />
To see much more, go to: <a href=3D"http://oh-university.live/index.php/cam=
paigns/[CAMPAIGN_UID/track-url/rz507rltj7c2f/9724f64d860bb8fa4f77712b3ea12e=
ac1fd24058">http://go.bible-woke.org</a>|<a href=3D"http://oh-university.li=
ve/index.php/campaigns/da625rwyhx177/track-url/rz507rltj7c2f/37db1bffc993e4=
eb09f894ffb9fb30d015c7e877">http://news.bible-woke.org</a>|<a href=3D"http:=
//oh-university.live/index.php/campaigns/da625rwyhx177/track-url/rz507rltj7=
c2f/2bde4a4e11b1e77724fe213046106d19cad2d91c">http://tv.bible-woke.org</a>|=
<a href=3D"http://oh-university.live/index.php/campaigns/da625rwyhx177/trac=
k-url/rz507rltj7c2f/747ecf3078288b9cbe78532a99690f295cb1b2ba">http://go.bib=
le-now.org</a>|<a href=3D"http://oh-university.live/index.php/campaigns/da6=
25rwyhx177/track-url/rz507rltj7c2f/90c7fd322e2ae972a075685623abc152fe0201a1=
">http://news.bible-now.org</a>|<a href=3D"http://oh-university.live/index.=
php/campaigns/da625rwyhx177/track-url/rz507rltj7c2f/fe4264ddd6147c86c3c9c88=
b7527f7c44dcdb5f3">http://tv.bible-now.org</a>|<a href=3D"http://oh-univers=
ity.live/index.php/campaigns/da625rwyhx177/track-url/rz507rltj7c2f/bddb2203=
8c1a00d16d6aaf9ccb49818982897dff">http://go.bible-today.org</a>|<a href=3D"=
http://oh-university.live/index.php/campaigns/da625rwyhx177/track-url/rz507=
rltj7c2f/79f0f02f19e412e0e1d70ab9116225c6c92ad7c8">http://news.bible-today.=
org</a>|<a href=3D"http://oh-university.live/index.php/campaigns/da625rwyhx=
177/track-url/rz507rltj7c2f/a0630a6296e6927b31ac8d0f2a715483579778df">http:=
//tv.bible-today.org</a>] to see all the proof!<br />
<br />
If you feel led to, please forward this email to your friends and family so=
 they may know that God is moving in these times in mighty ways, even throu=
gh His prophets to proclaim the truth of His word to the ends of the earth.=
 God bless!<br />
<br />
"Why did the Biden campaign choose 30330? 2020 divided by 666 =3D 3.0330 Wh=
o believes this to be a coincidence? October 2020 Isaiah 53:6 Someone said =
we are being whipsawed in 2020. Truly a great division is taking place betw=
een good and evil=E2=80=94both symbolically and literally (riots, unrest, p=
olitics). If you take the current year 2020 and divide it by the number 666=
 (known for its satanic implications) you will get the number 30330 (repeat=
ed). This number 30330 happens to be the number used to vote for Joe Biden =
and Kamala Harris. Freaky? Supernatural? Odd for sure. Whatever this means,=
 it doesn=E2=80=99t seem good to me. First, why would anyone knowingly choo=
se those particular numbers for their campaign? If they weren=E2=80=99t kno=
wingly chosen, then it appears to be a supernatural act by the evil one him=
self and I would want to change those numbers ASAP. And if the numbers were=
 chosen knowing their significance, are you satanic? Is this campaign satan=
ic? Either way I do not believe this is a coincidence. And one thing is cer=
tain, 2020 is truly being divided by Satan. He is the master deceiver and s=
preader of chaos. Jesus calls him the father of lies."<br />
<br />
So I looked up this number 30330 concerning Joe Biden, and I found this inf=
ormation:=C2=A0<br />
<br />
If you send a text to that number (at that time), you would get a response =
asking to support Joe's campaign to take down Donald Trump, with one part i=
n caps saying "CHIP IN >>" pointing to a link to go and donate.<br />
<br />
"CHIP IN"? Obama has used this phrase in the past on his twitter and people=
 believe it is a subliminal message to receive the mark of the beast, that =
is to say the implantable RFID microCHIP that will go IN our body.<br />
<br />
The Holy scriptures warns us in the last days that a false prophet will sta=
nd up performing miraculous signs deceiving many to receive the beasts mark=
:<br />
<br />
..."Then the beast was captured, and with him the false prophet who worked =
signs in his presence, by which he deceived those who received the mark of =
the beast and those who worshiped his image" (Revelation 19:20)...<br />
<br />
No matter the cost, DO NOT TAKE IT!<br />
<br />
"Then a third angel followed them, saying with a loud voice, "If anyone wor=
ships the beast and his image, and receives his mark on his forehead or on =
his hand, he himself shall also drink of the wine of the wrath of God, whic=
h is poured out full strength into the cup of His indignation. He shall be =
tormented with fire and brimstone in the presence of the holy angels and in=
 the presence of the Lamb. And the smoke of their torment ascends forever a=
nd ever; and they have no rest day or night, who worship the beast and his =
image, and whoever receives the mark of his name" (Revelation 14:9-11).<br =
/>
<br />
We're living in very prophetic times with major Biblical prophecies being f=
ulfilled.<br />
<br />
When Donald Trump recognized Jerusalem as capital of Israel on December 6 2=
017, this was a big step to fulfill the Third Temple foretold in the words =
of God.<br />
<br />
The scriptures alerts us that the Antichrist will seat himself in this temp=
le:<br />
<br />
"...and the man of sin is revealed, the son of perdition, who opposes and e=
xalts himself above all that is called God or that is worshiped, so that he=
 sits as God in the temple of God, showing himself that he is God" (2 Thess=
alonians 2:3-4).<br />
<br />
Within the Islamic faith, they have a figure known as the Mahdi, known as t=
heir messiah who they are waiting to be revealed. There are a number of tes=
timonies from people on the internet who imagine this man shall be Barack O=
bama who is to be the biblical Antichrist. I have had strange dreams (you c=
an read them in my article on the website above) about Barack. He got on st=
age declaring himself to be a follower of Christ with no affiliation to the=
 Muslim religion, but was later revealed by his circle of relatives that he=
 indeed is a religious Muslim.<br />
<br />
So what's in the name? The meaning of someones name can say a lot about a p=
erson. God throughout history has given names to people that have a specifi=
c meaning tied to their lives. How about the name Barack Obama? Let us take=
 a look at what may be hiding beneath the surface...<br />
<br />
Jesus says, "And He said to them, 'I saw Satan fall like lightning from hea=
ven'" (Luke 10:18).<br />
<br />
In Hebrew, the word "Barack" means "lighting", and the use of "Bama" (Stron=
gs Hebrew phrase 1116) is used to refer to the "heights" of heaven.<br />
=C2=A0<br />
The day following the election of Barack Obama (11/04/08), the winning pick=
 three lotto numbers in Illinois (Obama=E2=80=99s domestic state) for 11/5/=
08 were 666.<br />
<br />
Obama was formerly a U.S. senator for Illinois, and his zip code was 60606.=
<br />
<br />
The names of both of Obama's daughters are Malia and Natasha. If we were to=
 write those names backwards we would get "ailam ahsatan". Now if we remove=
 the letters that spell "Alah" (Allah being the God of Islam), we get "I am=
 Satan". Coincidence? I don't think so.<br />
<br />
These are just a few of many evidences why Barack Obama is the Antichrist. =
You can see many more in my article on the website above, as well as read a=
bout the dreams I've had concerning this man. I'm more than convinced that =
God has shown me that he is without a doubt the Antichrist, and we will see=
 him rise to power in the not so dinstant future.<br />
<br />
So, why do we need Jesus Christ?<br />
<br />
"for all have sinned and fall short of the glory of God" (Romans 2:23).<br =
/>
<br />
"For the wages of sin is death, but the gift of God is eternal life in Chri=
st Jesus our Lord" (Romans 6:23).<br />
<br />
Our good works can't save our souls from the wrong we've committed. If we s=
tep before a judge, being guilty for committing a crime, the judge is not g=
oing to judge us by the good that we have done, but rather the crimes we ha=
ve committed. If we as fallen humanity, created in God's image, pose this t=
ype of moral justice, how much greater a perfect, righteous, and Holy God?<=
br />
<br />
God has delivered to us His moral regulation's by means of the 10 commandme=
nts received by Moses at Mt. Siani. These laws were not given so we can be =
justified, however so that we may see the need for our saviour. They're the=
 mirror of God's character of what He has put in each of us, with our consc=
ious bearing witness that we all know that it's an act of evil to steal, li=
e, dishonor our dad and mom, and so forth.<br />
<br />
We can try to observe all the moral guidelines of the 10 commandments, howe=
ver we'll by no means catch up to them to be justified before a Holy God. T=
he same word of the law given to Moses was brought forth as flesh over 2000=
 years ago inside the body of Jesus Christ. He came to be our justification=
 by perfectly fulfilling the commandments of God, living a sinless life tha=
t only God could fulfill.<br />
<br />
The distance between us and the law of God can by no means be reconciled by=
 our own personal merit, however the arm of Jesus is stretched out by the g=
race and mercy of God. And if we are to seize hold of, by means of faith in=
 Him, He will pull us up being the one to justify us. As inside the court o=
f law, if somebody steps in and pays your debt, even though you are guilty,=
 the judge can do what is legal and just and let you go free. That is what =
Jesus did almost 2000 years in the past on the cross. It was a legal transa=
ction being fulfilled inside the spiritual realm by the shedding of His blo=
od, with His last words being, "...It is finished!..." (John 19:30).<br />
<br />
So why did Jesus have to die for us?<br />
<br />
Because God is Holy and just, the wrath that we deserve could not be overlo=
oked. Through the perfect righteousness and justice of God's character, it =
ought to be reconciled, it ought to be quenched and satisfied.<br />
<br />
For God takes no pleasure in the death of the wicked (Ezekiel 18:23). That =
is why in Isaiah chapter 53, where it speaks of the coming Messiah and His =
soul being a sacrifice for our sins, why it says it satisfied God to crush =
His only begotten Son.<br />
<br />
That is because the wrath that we deserve was justified by being poured out=
 upon His Son. For if it were to be poured out upon us who deserve it, we'd=
 all die and go to hell. God created a way of escape by pouring it out on H=
is Son who's soul could not be left in Hades, however was raised and seated=
 at the right hand of God in power.<br />
<br />
So now when we put on the Lord Jesus Christ (Romans 13:14), God no longer l=
ooks at the person who deserves His wrath, but rather the glorious image of=
 His perfect Son residing in us, justifying us as if we acquired the wrath =
we deserve, making a way of escape from the curse of death.<br />
<br />
Now what we ought to do is repent and believe in the saviour, confessing an=
d turning from our sins. That is not only a head knowledge of believing in =
Jesus, instead receiving His words, taking them to heart. Where we no longe=
r live to exercise sin, however turn from our sins and exercise righteousne=
ss:<br />
<br />
"Do you not know that the unrighteous will not inherit the kingdom of God? =
Do not be deceived. Neither fornicators, nor idolaters, nor adulterers, nor=
 homosexuals, nor sodomites, nor thieves, nor covetous, nor drunkards, nor =
revilers, nor extortioners will inherit the kingdom of God. And such were s=
ome of you. But you were washed, but you were sanctified, but you were just=
ified in the name of the Lord Jesus and by the Spirit of our God" (1 Corint=
hians 6:9-11).<br />
<br />
By doing so we will come to be transformed into the image of God by means o=
f faith in His Son Christ Jesus Who is inclined to give the Holy Spirit to =
people who ask of Him:<br />
<br />
"Most assuredly, I (Jesus) say to you, unless one is born of water and the =
Spirit, he cannot enter the kingdom of God. That which is born of the flesh=
 is flesh, and that which is born of the Spirit is spirit. Do not marvel th=
at I said to you, 'You must be born again.' (John 3:5-6).<br />
<br />
"But you are not in the flesh but in the Spirit, if indeed the Spirit of Go=
d dwells in you. Now if anyone does not have the Spirit of Christ, he is no=
t His" (Romans 8:9).<br />
<br />
What are you waiting for? Our heavenly Father only wants the best for us al=
l, restoring everything this world has stolen from us. That is what it mean=
s to be "holy". To be made whole.<br />
<br />
He's waiting to listen to you. That God given tongue to speak language, by =
way of faith, pray to Him, ask Him to forgive you by confessing your sins a=
nd be willing to forsake them; that you accept the sacrifice of His Son Jes=
us on the cross, and that you want His Holy Spirit living inside you rework=
ing you into a child of the living God.<br />
<br />
Jesus says, "but whoever drinks of the water that I shall give him (the Hol=
y Spirit) will never thirst. But the water that I shall give him will becom=
e in him a fountain of water springing up into everlasting life."<br />
<br />
Did you realize that Jesus spoke more about hell than any one in the script=
ures, even more than He spoke about heaven?! For this very cause He came to=
 die for us, to deliver us from this place that we earned by our sins.<br /=
>
=C2=A0<br />
He describes hell as a real place where,<br />
<br />
"Their worm does not die<br />
And the fire is not quenched" (Mark 9:44).<br />
<br />
And where,<br />
<br />
"There will be weeping and gnashing of teeth..." (Luke 13:28).<br />
<br />
Jesus tells us who to fear,<br />
<br />
"And do not fear those who kill the body but cannot kill the soul. But rath=
er fear Him who is able to destroy both soul and body in hell" (Matthew 10:=
28).<br />
<br />
"Now I saw a new heaven and a new earth, for the first heaven and the first=
 earth had passed away. Also there was no more sea. Then I, John, saw the h=
oly city, New Jerusalem, coming down out of heaven from God, prepared as a =
bride adorned for her husband. And I heard a loud voice from heaven saying,=
 'Behold, the tabernacle of God is with men, and He will dwell with them, a=
nd they shall be His people. God Himself will be with them and be their God=
. And God will wipe away every tear from their eyes; there shall be no more=
 death, nor sorrow, nor crying. There shall be no more pain, for the former=
 things have passed away.'<br />
<br />
Then He who sat on the throne said, 'Behold, I make all things new.' And He=
 said to me, 'Write, for these words are true and faithful.'<br />
<br />
And He said to me, 'It is done! I am the Alpha and the Omega, the Beginning=
 and the End. I will give of the fountain of the water of life freely to hi=
m who thirsts. He who overcomes shall inherit all things, and I will be his=
 God and he shall be My son. But the cowardly, unbelieving, abominable, mur=
derers, sexually immoral, sorcerers, idolaters, and all liars shall have th=
eir part in the lake which burns with fire and brimstone, which is the seco=
nd death.'" (Revelation 21:1-8).<img width=3D"1" height=3D"1" src=3D"http:/=
/oh-university.live/index.php/campaigns/da625rwyhx177/track-opening/rz507rl=
tj7c2f" alt=3D"" />
</body>
</html>

--_=_swift_1631361964_c92f395cc7b807fa7f713ba5b47f39a0_=_--



--===============3281902911468160883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3281902911468160883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3281902911468160883==--


