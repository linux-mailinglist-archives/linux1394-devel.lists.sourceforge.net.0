Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87055720DC5
	for <lists+linux1394-devel@lfdr.de>; Sat,  3 Jun 2023 06:25:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5IpV-0006GC-VW;
	Sat, 03 Jun 2023 04:25:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5IpU-0006G4-MN
 for linux1394-devel@lists.sourceforge.net;
 Sat, 03 Jun 2023 04:25:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SG6SzE6G37+beV/GsQpq/96obshNRyq9IKpQsfb/sD4=; b=Hj07QoiZ0IuiAqy7+mfqmeSO9n
 qCf1XxYX6C9dWuo3n80LOIBvqFqtPTM/z+ju+BNRvOswkqoFEUw6YZjvCBPgvJiZLG35vIHsV9UIQ
 5HMn5PUzPKE1cLqkfXOoXj/NTF6sGY25dv5BaCEb47AZgjBz8XiM1r38zBWYP8jw7ITk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SG6SzE6G37+beV/GsQpq/96obshNRyq9IKpQsfb/sD4=; b=RzBK2ugVer8T5xul5YMfWvzAGT
 AzH34z3ovEYVw9SoXyIl8ds73+PF3NzGgg21SCCUoVjQHCkErFibsiP6sy7r2vTPq7cKQaE4RHcTO
 vY+P9lRyRzuHT05KoltNlK8GGtinEDkF37Lr0Wm5AkqZQzasFdzwh5n2Gge6hg/g/XIM=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5IpP-0002Oq-KH for linux1394-devel@lists.sourceforge.net;
 Sat, 03 Jun 2023 04:25:29 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 79B8732005BC;
 Sat,  3 Jun 2023 00:25:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sat, 03 Jun 2023 00:25:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685766309; x=
 1685852709; bh=SG6SzE6G37+beV/GsQpq/96obshNRyq9IKpQsfb/sD4=; b=n
 0KInLtzJGZ90RTdTAYWN79/u2fuBDgk4hEblVWKk3liHhIKZIEFNKxsohIUpwKEg
 mPdBLFsGPDoXXsNm2BMS/25pgieOz6naAvkcM6lX7eShdY7D4IXDzfOmJfbg180F
 OPbNmc0aB+vK4INx0FP17mFmqQhGoQXEP2u7flr0zWqgxWqOYSwcdvYGMqGBSJqq
 IgwG5OE5k7IKQud2zUcCMG6BgS5nqp96YMOpH3rt4u+vvkq97Sl6DaQefidnqne8
 xHpBDXlhLB2QqSKeVcLPcc+g9qhE5cHnEtRJLJAHujV6fNid9jdPhrKM1evINSC6
 XP67aMhZlxMV0w6v1cnWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1685766309; x=1685852709; bh=SG6SzE6G37+be
 V/GsQpq/96obshNRyq9IKpQsfb/sD4=; b=OYbKQrUUSy15d12jhfvySax+weEw9
 vSrBozxobEDm0i2H5GlL07+KgFSfKyYWJA39AG+MTLPbpqfE2eAc0oVVyHXYzdeJ
 0GLhAElWAeXX6Q1XlSIXjraEn1ESnzP6BGGIZgVsR3J9c6ExDHhAAZQH7Vfr01J+
 FbIzqLppj14KBAho3dPzwqgxvhOl799SYQOKnqJC79C/V1EMZm17FBvnDHECPZ2c
 TSbmPbgS3quEgIQziOx5gkdGdOQAtVxeQP7eP1bknTfRCQoUHOd03aZRQSIJr1Aj
 RiU78X0KE08kP48BXeBdVt3CFcDeFFHpzCppDkjObJYMWpzyYV6dW0H5g==
X-ME-Sender: <xms:pMB6ZOCj2qIpotdIPiNKI4dvIrbyist-Qmb9652vS57aNknzcU_2-A>
 <xme:pMB6ZIgiyWDs7hzEws5tUP0cfCdlkWw1vhffGhyNFK63mURRLqDnO6xop4ghu3uSI
 pmvjROgdNoQ_45_ZCw>
X-ME-Received: <xmr:pMB6ZBk8aqd2K7m7HiNHE9b1UxqYbkFQBAf2qwljRIi-2RRP4cLN1rWNpPsEfIc3Pk8RrWpTONqgDmVNZAWtXlpt66PEBQ_7EA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeelgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:pMB6ZMx4KRSjHtFCMGm8QRWRUYX7GnTMauimwa2iLXwD2hwH7VD46Q>
 <xmx:pMB6ZDR7g1iw8umgiuobRjoBfsKMObFWAzny35Rxc6nBMajaUaYDHQ>
 <xmx:pMB6ZHbJgv1_4HR5-U0kGkclt6U-X7_syW-pzJwCFND4CuM7B6rZZA>
 <xmx:pcB6ZOc6x-lPsgfGR0AZ9-NPKAi0ztCFyxs6VPafJvdkdxzUfP1qOQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 3 Jun 2023 00:25:07 -0400 (EDT)
Date: Sat, 3 Jun 2023 13:25:04 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] firewire: fix warnings to generate UAPI documentation
Message-ID: <20230603042504.GA135015@workstation.local>
Mail-Followup-To: Randy Dunlap <rdunlap@infradead.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
References: <20230601144937.121179-1-o-takashi@sakamocchi.jp>
 <c9770ddc-d1fe-d49f-adec-a413a7bf65ec@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9770ddc-d1fe-d49f-adec-a413a7bf65ec@infradead.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Randy, On Thu, Jun 01, 2023 at 01:23:27PM -0700, Randy
 Dunlap wrote: > Hi, > > On 6/1/23 07:49, Takashi Sakamoto wrote: > > Any target
 to generate UAPI documentation reports warnings to missing > > annotatio
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q5IpP-0002Oq-KH
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Randy,

On Thu, Jun 01, 2023 at 01:23:27PM -0700, Randy Dunlap wrote:
> Hi,
> 
> On 6/1/23 07:49, Takashi Sakamoto wrote:
> > Any target to generate UAPI documentation reports warnings to missing
> > annotation for padding member in structures added recently.
> > 
> > This commit suppresses the warnings.
> > 
> > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Closes: https://lore.kernel.org/lkml/20230531135306.43613a59@canb.auug.org.au/
> > Fixes: 7c22d4a92bb2 ("firewire: cdev: add new event to notify request subaction with time stamp")
> > Fixes: fc2b52cf2e0e ("firewire: cdev: add new event to notify response subaction with time stamp")
> > Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> > ---
> >  include/uapi/linux/firewire-cdev.h | 14 ++++++--------
> >  1 file changed, 6 insertions(+), 8 deletions(-)
> > 
> 
> You can do it as this patch shows, or you can hide those padding fields as
> described in Documentation/doc-guide/kernel-doc.rst:
> 
> Inside a struct or union description, you can use the ``private:`` and
> ``public:`` comment tags. Structure fields that are inside a ``private:``
> area are not listed in the generated output documentation.
> 
> The ``private:`` and ``public:`` tags must begin immediately following a
> ``/*`` comment marker. They may optionally include comments between the
> ``:`` and the ending ``*/`` marker.
> 
> See below.
> (snip) 

Thanks for your review and suggestion. Indeed, the private/public
annotation is one of our options and I have realized it.

I think it my preference to reduce load when reading structure layout.
The usage of private/public requires readers' brain to switch context
of access modifier. I guess that I would like to avoid such load if I were
the reader.

If the structure definition includes many annotations, it also increases
such load. In my experience, it is likely that annotation in structure
definition does not necessarily include enough information about the
member itself, especially when writing applications. I think it my
preference as well that member annotation of structure is in document,
(but it would be case-by-case.) It seems to be explicit way, vaguely.

Anyway thanks for your comment. It is fun to me;)


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
