Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F73E6B5974
	for <lists+linux1394-devel@lfdr.de>; Sat, 11 Mar 2023 09:21:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pauTU-0006sS-5i;
	Sat, 11 Mar 2023 08:21:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pauTQ-0006sJ-4J
 for linux1394-devel@lists.sourceforge.net;
 Sat, 11 Mar 2023 08:21:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LPUiO5ihZribBMR36kf9I/dPoJm6f/6L0pCKVHMrlOI=; b=OcOaTWZyu9P7ILbpb1cxjJYb/u
 MQuQixumD5Oaumy+DWQKU9JJuPjAXUQn9jVmQkiacQd96gYTa3vow/8UgoUi1Oo3OP6KcAVqwVwpy
 13G0gv+nxhfwmEKVJ0Q1xJ6W5l5xb10mYR3smUr2YopEgN43HSYQqI2SkLU4wBHjoBrU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LPUiO5ihZribBMR36kf9I/dPoJm6f/6L0pCKVHMrlOI=; b=NTTC15OUvsPWQe68N5P6XWF5cd
 TK8lKgi3Gh63UNv81RqYpGRcfvRE+GAV+Q/XP9N59Z9ejve45BYVQnMVWVXPDE5IDYhoSBRnyfo+g
 IjkUi+ivhybJuIWweMPBLDQTQ8+5BV5HwA31gEmNaX6lMAJC3pRU1pQCqB9mrK7tevio=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pauTL-0000tO-Ni for linux1394-devel@lists.sourceforge.net;
 Sat, 11 Mar 2023 08:21:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 5F4DC3200302;
 Sat, 11 Mar 2023 03:03:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sat, 11 Mar 2023 03:03:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1678521827; x=
 1678608227; bh=LPUiO5ihZribBMR36kf9I/dPoJm6f/6L0pCKVHMrlOI=; b=m
 iG77Zxh9fyCVghA1eoVlx3ZX0AmyAd4vDs/MAZt8PLqTR/UXQ39woNwe+Y6C6RVE
 QLNGYsV/LEiTqR31RKGLgjxwC5xXJFdzVrBf+VRdndLggI/p/Mjrg8V5qEUnpKfb
 HxJXyPUWE4C3b+vSCAFsus+C58v2g8WGsnFg3quJa7JZ5NFD2sxMWsGRpWWEoiRE
 JK8WE41Px/0MSCN8afId4e/hoLSLTv0zxVnOKtIWyKnMeOpRwgaQmco3TI58M3nS
 GMtBhPfAegyXwrRde5DBHiFw7vXcgAoYWqw0YmyoAn9UNFmY/AVeYLro5UA0TxdK
 VSe7CqrsYrIOZQMQ3SZ3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1678521827; x=1678608227; bh=LPUiO5ihZribB
 MR36kf9I/dPoJm6f/6L0pCKVHMrlOI=; b=RZa0sWw6TuaBjswgd0TRQH2mVbD+g
 83WdyBKHvRLKfAm2zB3qXJYYihDhXRa2KRPKQdkGbkCFisYOgihOYZZVESRZeNC0
 PyDSKrDTWelRwwzjVJYjXgEso134W+Gt8VORH7qRGf6ipVwRhPHBbC9/hgEED/SA
 vuKaFeu3Gm0GmyZP4VViS9I0sXJukxrjIBuEbYusexDTFtg6RovAkV7aGcREafN1
 c2jrB/xEng0SKgA8T0jot4Rt/8gjQSnnzqjUfE/wRng+aVoBdYAfh9KOUWZjUKt3
 b2wljMrg3/AIw8l44agMxzOnZBKkPaMnGz4JmO/m70MoRey2OTasruOcQ==
X-ME-Sender: <xms:4zUMZAkylETHO_pZr2zqXKEuEsMugnhbHmq19ZkOzaEuERBUzoJEjQ>
 <xme:4zUMZP1_T47mtYQLFR0mkkOmUChLece4Jdlsw-QTC6-oSKB4q_xETcRhvc_1lMLHh
 G_XmFW8hjeN7ERggHY>
X-ME-Received: <xmr:4zUMZOokc18IRGc5_VW2u67OIlMAa7cmMTfQICa2vydVRNYMpnD3GJSgVd7iG5CEeN-OwPqrz7MF8cXNabBuuB8P>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdduledguddufecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghk
 rghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhih
 drjhhpqeenucggtffrrghtthgvrhhnpeeiueelkeeljeevvefhieeileffffdtleeihefg
 feefveekfffgudehkeejkeevleenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhffh
 hmphgvghdrohhrghdpfhhrvggvuggvshhkthhophdrohhrghdpvhhiuggvohhlrghnrdho
 rhhgpdhmhihthhhtvhdrohhrghdpfhhfrgguohdrohhrghdprghrtghgrhgrphhhrdguvg
 enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdht
 rghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:4zUMZMlfzE_IKJT2xv5RVwQArjfGDWGC2KA8ZTsXJ-6s-Pz8T36TRQ>
 <xmx:4zUMZO0io2-uSHuo-wLOKmBuAVBwJ9CxuL6eO7fz1EZ4RDJ3HK_TPw>
 <xmx:4zUMZDtpOVPJjxELaYCQPBGS27vNQy3_OwkLRHhMox76RY5tN9os1w>
 <xmx:4zUMZDyb8SKVcUYz-KSTUcHaARD7Oa6wscv4T8mrDhlLXRfr7X5oGA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 11 Mar 2023 03:03:45 -0500 (EST)
Date: Sat, 11 Mar 2023 17:03:43 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: [PATCH] MAINTAINERS: replace maintainer of FireWire subsystem
Message-ID: <20230311080343.GA378828@workstation>
Mail-Followup-To: Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 tiwai@suse.de, broonie@kernel.org
References: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
 <20230310210356.561dbe63@kant>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230310210356.561dbe63@kant>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Stefan, On Fri, Mar 10, 2023 at 09:03:56PM +0100, Stefan
 Richter wrote: > On Mar 06 Takashi Sakamoto wrote: > > In the last few years, 
 I have reviewed patches for FireWire subsystem and > > requested sound su
 [...] Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pauTL-0000tO-Ni
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
Cc: tiwai@suse.de, broonie@kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Stefan,

On Fri, Mar 10, 2023 at 09:03:56PM +0100, Stefan Richter wrote:
> On Mar 06 Takashi Sakamoto wrote:
> > In the last few years, I have reviewed patches for FireWire subsystem and
> > requested sound subsystem maintainer to sent them to mainline, since
> > FireWire subsystem maintainer has been long absent. This situation is not
> > preferable since we have some user of sound hardware in IEEE 1394 bus.
> > 
> > I will stand for the maintainer, and work for FireWire core functions and
> > 1394 OHCI driver, as well as sound drivers. This commit replaces the
> > corresponding entry.
> > 
> > As you know, IEEE 1394 is enough legacy. I would like to schedule the end
> > of my work in the subsystem. My effort will last next 6 years. In 2026, I
> > will start strong announcement for users to migrate their work load from
> > IEEE 1394 bus (e.g. by purchasing alternative devices in USB and hardening
> > system for them), then in 2029 let me resign the maintainer and close
> > Linux 1394 project.
> > 
> > My current work focuses on real time data (sampling data) transmission
> > protocol in packet-oriented communication, thus I would provide less help
> > to implementations for the other type of protocol; i.e. IPv4/IPv6 over
> > IEEE 1394 bus (firewire-net), SCSI transport protocol over IEEE 1394 bus
> > (firewire-sbp2) and iSCSI target (sbp-target).
> > 
> > If receiving few objections from developers, I will start my work to send
> > fixes for v6.3 prepatch, and PR for future v6.4 or later. I'm pleased if
> > getting any help until the end.
> > 
> > Reference: commit b32744751e75 ("firewire: add to MAINTAINERS")
> > Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> 
> Acked-by: Stefan Richter <stefanr@s5r6.in-berlin.de>

I'm glad to see you again in the list ;)

I really appreciate your long effort for the subsystem. I guess that your
life became swamped recently against your work in the subsystem, while I
feel that soft-landing of the project is still preferable for users.

Below items are in my plan for the subsystem until being closed. I'm
pleased if getting your help in any time.

* 2023, 2024, 2025, 2026
  * take over the subsystem maintainer
    * set up repositories in `<https://git.kernel.org/>`_
  * refresh web site and update information
  * take over the administration of communication channels
  * adding the list archive of linux1394-devel to
    `lore.kernel.org <https://korg.docs.kernel.org/lore.html>`_
  * fix issues of subsystem
    * modernize 1394 OHCI driver
    * Pull requests to Linus
  * get help from Linux Foundation to place documents for specification
    defined by 1394 Trade Association
    * If no problems, upload the documents to the new web site
  * invite repositories of external librararies (``libavc1394``, ``libdc1394``)
    * Announcement to distribution package maintainers about the upstream shift
* 2027, 2028
  * Close announcement to below applications
    * `FFMPEG <https://ffmpeg.org/>`_
    * `GStreamer <https://gstreamer.freedesktop.org/>`_
    * `VLC <https://www.videolan.org/vlc/index.ja.html>`_
    * `MythTV <https://www.mythtv.org/>`_
    * `FFADO <http://ffado.org/>`_
* 2029
  * Close the project
  * Close the communication channels
  * Archive repositories
  * Resign the subsystem maintainer

> > ---
> >  MAINTAINERS | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 8d5bc223f..e137c1b2f 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -7954,10 +7954,11 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/nab/lio-core-2.6.git master
> >  F:	drivers/target/sbp/
> >  
> >  FIREWIRE SUBSYSTEM
> > -M:	Stefan Richter <stefanr@s5r6.in-berlin.de>
> > +M:	Takashi Sakamoto <o-takashi@sakamocchi.jp>
> > +M:	Takashi Sakamoto <takaswie@kernel.org>
> >  L:	linux1394-devel@lists.sourceforge.net
> >  S:	Maintained
> > -W:	http://ieee1394.wiki.kernel.org/
> > +W:	http://ieee1394.docs.kernel.org/
> >  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
> >  F:	drivers/firewire/
> >  F:	include/linux/firewire.h
> 
> 
> 
> -- 
> Stefan Richter
> -======--=== --== -=-=-
> http://arcgraph.de/sr/

Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
