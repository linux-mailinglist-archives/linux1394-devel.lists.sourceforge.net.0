Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC04E6B639C
	for <lists+linux1394-devel@lfdr.de>; Sun, 12 Mar 2023 08:07:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pbFnz-0007wH-By;
	Sun, 12 Mar 2023 07:07:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pbFny-0007w8-5S
 for linux1394-devel@lists.sourceforge.net;
 Sun, 12 Mar 2023 07:07:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UMczy/27U9NVi3oceygL+rUC/esO2p8l3FHM0K2IMrU=; b=SIRq8nvxY1FUDHYWwHk6ouwN/6
 UOADqhc5dzrc55/zFBDkuSTaYVkWLlNiTZD7o8Gv7SUkquoO32BElqQ5O3VW2h91Z96sOeR5MPkSm
 6c2MxabCiYMMcaCNPSqG2CpMS9vuPWeqBs3q0BIUsyGQJuhUedxJAY9RsvEzgVGTrloE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UMczy/27U9NVi3oceygL+rUC/esO2p8l3FHM0K2IMrU=; b=Rgc/m2UXmymvhCssLPlzl5aeV7
 DR5VAJf2Qbg/3vb4c/UaMDf4EAVBFQrttdtc+79Armb1+Vrqnw6RgHelU0PqYRTZmlc2DD/3/lL5x
 wKCbSg/AN+KUYuX1G0WP1cCrzdkZkDEB/IZv1NDTp9ZElrAB2QsoL/5dUr7W56UbDSSY=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbFnv-005Jjq-O5 for linux1394-devel@lists.sourceforge.net;
 Sun, 12 Mar 2023 07:07:42 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id AFE813200918;
 Sun, 12 Mar 2023 03:07:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 12 Mar 2023 03:07:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1678604853; x=
 1678691253; bh=UMczy/27U9NVi3oceygL+rUC/esO2p8l3FHM0K2IMrU=; b=l
 S6d8ZsGh+1qowJIPGFvg1qa+rXyBv7tomNiuywwV5A8/Ya5B+1a87y3RWdBtnHA8
 CutEhD+j6Fup3sEx43Mx+0T0pyjL4txx8dmF8RHbS4CxldiEWV7rzneJiaJJk8NI
 xSn9L9wIrxBC+LB+DyGdVeR9dqUHKuCCPw7rz/HZJTAUIV4nJ7fh5891Olguq6w3
 DViOCbZXii6RTCfIJ9hDayFVh+lMeo5JSavlaO3j8Z875ZlCyksXhHHr9eCANdyX
 IvaSfirSNydB/JI7dKxr0KbZWULatz1Sbl4VmSBMRnADu3eBrUbEZB5H+jT/uFDw
 wuc9BSyMzlkrWTy4cNlZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1678604853; x=1678691253; bh=UMczy/27U9NVi
 3oceygL+rUC/esO2p8l3FHM0K2IMrU=; b=KCrNijciHoJHkz8ZQmAvSXhd1MCJw
 LCD7K+jSrwgfEuesuUflXIjHRCvpTCwqe1SYtK9+DO7gwQOTfO5Z37iy/DErXK1q
 DVdDYt2DSV0xSIwlpaC5fW39cT+Xc3BOii2gF+ONPKxnMxa5k4k2MrskEimZ3Iel
 ut2A+9yRXBTJYnxAlyTdPDd4qN/32MSpsIlEUo1dEnLSQlfcx/YR1IwP1oqC8AGC
 q0YPrq87Z0ny4wOEizkFyXtH3oAfRqw4f5NAl+uoNVPsMAOtfuhA4c/rxZKG+wHI
 w+4Epeq9QJX4Rrdx6v9Pbag6KVhKM2IOQSjLf5LoTt9Eu+47i8mxCBXQg==
X-ME-Sender: <xms:NHoNZIYMUUZbWcM-3rbWwCcldhdz-PGOKyvPQp9yV7M5b6bgHmqKPA>
 <xme:NHoNZDbVQMniHyazKLfnZ4mBJwF4jPkIAS4hgbRUTMZmtxViUuZwFi5n1uFCiwQZl
 D0SMNbca-LJj9DquJo>
X-ME-Received: <xmr:NHoNZC-kUUmWvaK38ccfWcCqwwNQRb9qWc8pZjrEUBiTV6xuYo3SDcpeB6Av85UK7fs_zCU0p2YbP3I_9QmRdJTsWGo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvddvuddguddtvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghk
 rghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhih
 drjhhpqeenucggtffrrghtthgvrhhnpeetieevtdevvdejhedtffefvdeivefhtdeffedv
 fffhhfffffeiffeufeduueekleenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhffh
 hmphgvghdrohhrghdpfhhrvggvuggvshhkthhophdrohhrghdpvhhiuggvohhlrghnrdho
 rhhgpdhmhihthhhtvhdrohhrghdpfhhfrgguohdrohhrghenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghm
 ohgttghhihdrjhhp
X-ME-Proxy: <xmx:NHoNZCqOfPNn67whPfE7WWqCliD6e0S5QGiLKePvgqAVFqkjdQ2BXQ>
 <xmx:NHoNZDoIvkptoxgz3AOzcTaKjr6M6uLXHngKqn1REOm9ULGzC-xgtw>
 <xmx:NHoNZAQ5rPCmksL_deTtYHMhthks_imU-9TDllbOrkMFF_gE4giUmg>
 <xmx:NXoNZCU72ZzPWptoiT5ZkHcJWGgLM9vNcnMMRTkvs0uoT_yaxhKqaA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 12 Mar 2023 03:07:30 -0400 (EDT)
Date: Sun, 12 Mar 2023 16:07:28 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: [PATCH] MAINTAINERS: replace maintainer of FireWire subsystem
Message-ID: <20230312070728.GA421475@workstation>
Mail-Followup-To: Stefan Richter <stefanr@s5r6.in-berlin.de>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 tiwai@suse.de, broonie@kernel.org
References: <20230306035814.78455-1-o-takashi@sakamocchi.jp>
 <20230310210356.561dbe63@kant>
 <20230311080343.GA378828@workstation>
 <20230311101554.14c211d4@kant>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230311101554.14c211d4@kant>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sat, Mar 11, 2023 at 10:15:54AM +0100, Stefan Richter
 wrote: > On Mar 11 Takashi Sakamoto wrote: > > I'm glad to see you again
 in the list ;) > > > > I really appreciate your long effort for the su [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pbFnv-005Jjq-O5
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

Hi,

On Sat, Mar 11, 2023 at 10:15:54AM +0100, Stefan Richter wrote:
> On Mar 11 Takashi Sakamoto wrote:
> > I'm glad to see you again in the list ;)
> > 
> > I really appreciate your long effort for the subsystem. I guess that your
> > life became swamped recently against your work in the subsystem, while I
> > feel that soft-landing of the project is still preferable for users.
> 
> Thank you. I need to apologize that I neglected to (at least) drop my
> maintainership title myself. I should have done so when I started to
> realize that I am not able to fulfill this role anymore.
> 
> > Below items are in my plan for the subsystem until being closed. I'm
> > pleased if getting your help in any time.
> > 
> > * 2023, 2024, 2025, 2026
> >   * take over the subsystem maintainer
> >     * set up repositories in `<https://git.kernel.org/>`_
> 
> Do you plan to re-use the existing (but neglected, by me) repos at
> kernel.org? 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git
> 	https://git.kernel.org/pub/scm/libs/ieee1394/libraw1394.git
> 	https://git.kernel.org/pub/scm/libs/ieee1394/libiec61883.git
> 
> If so, is there something which I can do to transfer access to you?
> (Although if yes, before that I need to enable myself to send encrypted
> e-mails again, after both of the mail user agents which I use dropped gpg
> support. Maybe the kernel.org admins can assist you quicker with repo
> access than I might.)

In the last week after posting the patch, I sent a request to system
administrator of kernel.org for the purpose. I think it will be done
within a few days so nothing left to us.

> >   * refresh web site and update information
> >   * take over the administration of communication channels
> >   * adding the list archive of linux1394-devel to
> >     `lore.kernel.org <https://korg.docs.kernel.org/lore.html>`_
> >   * fix issues of subsystem
> >     * modernize 1394 OHCI driver
> >     * Pull requests to Linus
> >   * get help from Linux Foundation to place documents for specification
> >     defined by 1394 Trade Association
> >     * If no problems, upload the documents to the new web site
> >   * invite repositories of external librararies (``libavc1394``, ``libdc1394``)
> >     * Announcement to distribution package maintainers about the upstream shift
> > * 2027, 2028
> >   * Close announcement to below applications
> >     * `FFMPEG <https://ffmpeg.org/>`_
> >     * `GStreamer <https://gstreamer.freedesktop.org/>`_
> >     * `VLC <https://www.videolan.org/vlc/index.ja.html>`_
> >     * `MythTV <https://www.mythtv.org/>`_
> >     * `FFADO <http://ffado.org/>`_
> > * 2029
> >   * Close the project
> >   * Close the communication channels
> >   * Archive repositories
> >   * Resign the subsystem maintainer
> 
> It's good to see you being active in the kernel and related userland
> development/ maintainership, and that you have a plan for the next years.

At the moment, I have a problem about the list archive.

As you know, kernel development process heavily relies on mail. Recently
many developers use lore.kernel.org to store blasted message as
persistent storage. I would like to follow to it.

According to the documentation[1], the list archive should be prepared
including sent messages as much as possible. However I subscribed it Feb
2011 and sometimes lost messages.

I think you have the stock of enough amount of messages in your mail
box. If you have enough free time, I would ask you to create list
archive for the purpose.

[1] https://korg.docs.kernel.org/lore.html


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
