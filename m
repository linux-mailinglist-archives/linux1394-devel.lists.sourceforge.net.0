Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC3895EC2D
	for <lists+linux1394-devel@lfdr.de>; Mon, 26 Aug 2024 10:39:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1siVG0-0004E2-RE;
	Mon, 26 Aug 2024 08:39:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1siVFz-0004Dt-1p
 for linux1394-devel@lists.sourceforge.net;
 Mon, 26 Aug 2024 08:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lx+NSMaJ9yKtGxyDuGsL0w5XtF+pAWR2HcD5iTEXX5A=; b=bGJc+FdfeXsqFuvJfLc8zfUZWC
 4OfgtJ3peHqOaIff78UpVC0VcqxyjVl7Mi7NKt+SxuBJtQuUp1rdgTS+fusCjfrpsxSjHbkG2c7si
 Y5XsxUA/J6Bvc3CrLRkZPFJs8vrZtfz2esQCsnV2q1H1qOl2fWn6Qz3lcni5M542MMro=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lx+NSMaJ9yKtGxyDuGsL0w5XtF+pAWR2HcD5iTEXX5A=; b=jPpZ8X+Tovbrt4ga2Z1FxYRevU
 OvJ4Yc2n6fk3/AbavvUZhfw8cFHNJCvzyWpS6/du7Wd7sLh9KrGMdbDN1ghTAF/PJZ09IqGPbtBHf
 W4eY5fPjSPQIT7g4SK0OFR3rq06BbRlpHOL7AGJncKwWyx3AuijarA2mRBhzxvI2jtqM=;
Received: from fhigh6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1siVFx-0007Zn-1f for linux1394-devel@lists.sourceforge.net;
 Mon, 26 Aug 2024 08:39:22 +0000
Received: from phl-compute-07.internal (phl-compute-07.nyi.internal
 [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 669A41151025;
 Mon, 26 Aug 2024 04:39:10 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-07.internal (MEProxy); Mon, 26 Aug 2024 04:39:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1724661550; x=
 1724747950; bh=lx+NSMaJ9yKtGxyDuGsL0w5XtF+pAWR2HcD5iTEXX5A=; b=O
 ijbpjMc7UwUegj25EPQdWot6AhMUGzv184Xi+TmGj1gUzkcdCHE7aDerKK1IQVnB
 BwPgEUjvNc3gy7rzcFAvDMJznNh5eGeaMau/7Xjp1VAImFripJZJY0mJ4WvR73ug
 Rl6UII/u/Tt7EilJH5s9Q6AtZ6zGwC2m2bE7p63jjlB7ewRWEkGZyfuBCd1Sayrj
 iNi7ehMm/JB3+wTnYbXu0NzSFUkVK90K/H3/3nJJZnmN558BqS8Bp0DU4wogQEZb
 iPX+rVnwWL28WO/5qD0O9a2wmdc1OdhRXbyFVXi+88V8KxgWIqCBsxSdCmdQKCA0
 vmi07UFi2Alk/8JRQyKcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1724661550; x=1724747950; bh=lx+NSMaJ9yKtGxyDuGsL0w5XtF+p
 AWR2HcD5iTEXX5A=; b=S0EDIiANRnsTqL0HAJggm1g6RFDJ4uW7ewuuFT8SrD6U
 1DYFyONOiQbufFb/M+GLnUpTqF/jN7SVeNn0mctM6e02QqIB3QyxRWYaEvwMvfkN
 SXTmrgbC8Yn0KyvbSbUtl8+YUKoQC6vhuNhCcfapk40nWnHmYyifLgr6w7Be0vBp
 yCkDCD/mFYP0x7Rs6tPPUpOxYrYGaQeixxaY0yVkH2+DVN6sBjKf5qmhfJvPuG3I
 Py5datvHQu0v2RDIX1tMVzINsxyyJUTdKkaCer3e8RlmyO0mTqPIuSeBbyzu1yPY
 cM2BQgn5jnZ/98cHIBU+79slSz5Hxx3QtXXpfohJ6g==
X-ME-Sender: <xms:Lj_MZs3M1wiX66buOqyI-0IL4LEotOJQloSfB0-6uJpIivO5p6mX0Q>
 <xme:Lj_MZnF91IBYXQQu0klz6NyhtL2hfF4KAsY4eMRJnWKsWCoUdPTyEx9cf30Tk4IHc
 wjDhyGVpVpUyfADh_U>
X-ME-Received: <xmr:Lj_MZk5HuVxW-7qyqkOpDyRs_h7rtDnLKVkuaKaQ8XslVeRr_VjXFTYzB8UXhNPidHE78R7-iRF8QgITWAWT_RAbWFHGVx6UnNc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddvkedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepfeefvedugeelhedvledt
 fefhledtgfegudehveevveelveffgffhgeelleekuedunecuffhomhgrihhnpeifihhkih
 hpvgguihgrrdhorhhgpdhkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttg
 hhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphht
 thhopegrnhgurhgvfihfvghrghhushhonhehtddtsehgmhgrihhlrdgtohhmpdhrtghpth
 htoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhg
 vgdrnhgvth
X-ME-Proxy: <xmx:Lj_MZl3cvpUIxEXOWGCkb2bLaKu2ReWFEPofHcQkbMg4WbJUnUY0BQ>
 <xmx:Lj_MZvElP0Q9DxhoBUSZ7bGZ_s-gnW-N04FRGVom9Y9mhmfryI-nig>
 <xmx:Lj_MZu9JDERR8zPBj76gAb0-3_vGdt_RswaC8eTM_Qd8Q1BFEN6Kqw>
 <xmx:Lj_MZknGmeDLzC_4hoTynR3Ad9eCiGmwJT9p10pjG4R5Xh4_4yZdNg>
 <xmx:Lj_MZkSgVOxHHOB4rtVHejkpXrw24MTLbUZAbNtAIhc9U9i8BqbdomNP>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 26 Aug 2024 04:39:09 -0400 (EDT)
Date: Mon, 26 Aug 2024 17:39:06 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Andrew Ferguson <andrewferguson500@gmail.com>
Subject: Re: Bug report: Mac Target Disk Mode not working in some cases
Message-ID: <20240826083906.GA90608@workstation.local>
Mail-Followup-To: Andrew Ferguson <andrewferguson500@gmail.com>,
 linux1394-devel@lists.sourceforge.net
References: <CAFvb365w5QXB8kGizFjytkg+Ag_bY_SB5B3LhHx2wSt7dtL1TQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFvb365w5QXB8kGizFjytkg+Ag_bY_SB5B3LhHx2wSt7dtL1TQ@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sun, Aug 25, 2024 at 09:31:40PM +0100, Andrew Ferguson
 wrote: > Hello, > > I firstly wanted to thank the maintainers for working
 on the ieee1394 > system for Linux. It's great to see continuing sup [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.157 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.157 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1siVFx-0007Zn-1f
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Sun, Aug 25, 2024 at 09:31:40PM +0100, Andrew Ferguson wrote:
> Hello,
> 
> I firstly wanted to thank the maintainers for working on the ieee1394
> system for Linux. It's great to see continuing support for firewire in
> Linux.
> 
> I have encountered a bug in that some Macs are not detected in Linux, when
> the Mac is being used in "Target Disk Mode". For those unfamiliar, Target
> Disk Mode boots an older (firewire-compatible) Mac in a mode where
> connecting it to another computer via firewire causes the Mac to appear as
> an external firewire hard drive. See the Wikipedia article
> <https://en.wikipedia.org/wiki/Target_Disk_Mode> for more information. To
> be clear, I am not trying to run the Linux1394 system on an older Mac; I am
> trying to connect a Mac in Target Disk Mode to a regular PC running Linux
> over firewire. The Mac should appear as an external firewire hard drive. On
> some Mac models, it works just fine. However on other models, it doesn't
> work. If I connect one of these non-working models to a Mac running OS X,
> it does work, so it does appear to be an issue with Linux1394.
> 
> Mac models that work:
> Macbook Pro late 2008
> iMac G4
> 
> Mac models that do not work:
> iBook G4
> Powerbook G4
> 
> I have access to more Mac models to test if necessary - the benefits of
> hoarding old electronics!
> 
> If the maintainers are interested in investigating this issue, what sort of
> debugging information can I provide? There's only a few lines in dmesg that
> to my eyes look useful ("sbp_scsi_abort" is one) but I can provide full
> dmesg output if helpful. I have a number of different Firewire PCI / PCIe
> cards I can use, including one that should be able to run the "nosy"
> ieee1394 packet sniffer (although I have no clue how to set that up!).
> 
> Many thanks, and kind regards,
> Andrew

Thanks for the report.

I'm sorry but I have less interests in the issue, since I have no
actual hardware to investigate the issue (I'm a developer of ALSA, thus
the center of my interest is multimedia protocol such like IEC 61883.)
Therefore it is up to you. If you are willing to solve the issue, I would
help you. Else, nothing changed.


In Linux kernel v6.10, I added some tracepoints events[1]. These events are
available to track asynchronous communication between Linux system and
peer node. If the issue is caused by any kind of communication error,
you could diagnose it.

```
$ ls -1 /sys/kernel/debug/tracing/events/firewire/
async_phy_inbound/                async_phy_outbound_initiate/      async_request_outbound_complete/  async_response_inbound/           async_response_outbound_initiate/ 
async_phy_outbound_complete/      async_request_inbound/            async_request_outbound_initiate/  async_response_outbound_complete/ 
...
```

Additionally, I think the protocol in the case is SBP. The protocol
specification is still available[2] and it would help your diagnose,
too.


[1] https://www.kernel.org/doc/html/latest/trace/events.html
[2] http://ieee1394.docs.kernel.org/en/latest/specifications.html#the-serial-bus-protocol

Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
