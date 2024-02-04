Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 343F3848C67
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Feb 2024 10:21:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rWYgC-0008Uo-Jq;
	Sun, 04 Feb 2024 09:20:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rWYg9-0008Ug-5E
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Feb 2024 09:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D0QpOGjFbZTko0PkSRlDsBxnVILcVK+fHTpP9Q5l7C8=; b=kN2CBL9j15bJryg5x20x4Z3CsB
 Mtj2BU9coaTIHf69m4fNloyb+7GiAy/TjY12VqyhVmFfLRh8qBtc63nNOFyc80AfSXe52P5FpYwK9
 nyzxidcgmT3kNEtapLiZzgrpDSB6w260Fv5ddQ8a0Hw/rlPJiQg9VTe23R7vPyXl6vKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D0QpOGjFbZTko0PkSRlDsBxnVILcVK+fHTpP9Q5l7C8=; b=fa9AKEugqkeAKzcL7v5A1t/Jz6
 wjcfUxWunfK5g+4qUlQg+wkyQ08Xi0K8yLidNtGSeBK8d+Ej1rSaB0lAVROAdFm98HdbFIBqgE4cO
 nJwen8IMZ85F6t5LQ8NfAWHY4sHd7oAdmdMEI3n7UypW9GcGmx2kg814DXaayDnj8x+E=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rWYg2-0000UD-Kc for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Feb 2024 09:20:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 725CF3200A78;
 Sun,  4 Feb 2024 04:20:26 -0500 (EST)
Received: from imap44 ([10.202.2.94])
 by compute3.internal (MEProxy); Sun, 04 Feb 2024 04:20:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1707038425; x=
 1707124825; bh=D0QpOGjFbZTko0PkSRlDsBxnVILcVK+fHTpP9Q5l7C8=; b=N
 czQepVe8zMpXJKP1j1nhEVKp72uhRCTTTf1CyQaCl/teneXT+Vj8tT1k+4G7uUaA
 skRz1MOxh1OY46AQ7aOSL5hcyxAV1sQ2C6zd757q5W12kO+ShY7bkcA9LIcxRKtv
 t0ap38uPRP485OoFKXyFfYeVoGVr3LSXkxgV1GR9cS16EtxO0Lf0TxijvdxHEUUx
 JYB29bYBNEj92MOL97Uf0GzdVY+O2L5w871B0fClQxZE5XfQwYdb4v29lKee4gkl
 tZkBwjLzWojTM6Hfbze1Go20AESv+Y7DUPh5KHJTPu+OWMZ4lq+BsKCbp2d+TzwU
 8HLS3OrvRDMdxPnd18z2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1707038425; x=1707124825; bh=D0QpOGjFbZTko0PkSRlDsBxnVILc
 VK+fHTpP9Q5l7C8=; b=oOqUDlRVKobB5wR8cZMHzzrIWbrCZU849rpx5xwjZoqm
 NPZjRJxNOwXlWXxnKl+QlG5brXyXzDmviCCUwsRFMPHfmTfF2c+tkcbbHWXtQZba
 v/5C+NM1zFRDfMEBxePzdEbNitp+QC5UhvGY1x6L7V1w/4mbOvcRw/tO/ZWz48Q4
 B/Xj8zH0Y7j41W9KHlpf0jHFzPiKVgZaJHo7jY5v/LQaeGgty60nkhO5BQVFToul
 2LIdlevMl5Q45L1heWbar9Uw7f64xKM2sIV5Yyfz3lQT6c84dw6IC+f/eNT/MBGu
 PwFlF/bzD/ZnzuQVwGLXFcjbHgyRfTYfIMNQfsbSTw==
X-ME-Sender: <xms:2Va_ZeaahbU1U04JOYqs5WOHtA0wTuh609bUyNKU1K9glIfS_Mdgcw>
 <xme:2Va_ZRa0C9vqHDoM4QL9R8qcogA69bCPD0bx_7edBBTSedviuMBtDZ_AVCVsOJs0c
 mtViBD-psLo0DDiuhc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedukedgtdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfvfgr
 khgrshhhihcuufgrkhgrmhhothhofdcuoehoqdhtrghkrghshhhisehsrghkrghmohgttg
 hhihdrjhhpqeenucggtffrrghtthgvrhhnpeelfedvveevveetjeeikedtgefghfeigfek
 leefkeekieehiedviefghfeltdehkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
 grmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:2Va_ZY_Jb9cadsyvu1a4Y8ACOnzIbaBrg5oRdwXbteB-sHgfNkVFFw>
 <xmx:2Va_ZQq4ZkCat1MSSrx6tBNCFAgtxCN-c3SOTkFsruskWETJqNCRfQ>
 <xmx:2Va_ZZockUZD6Oryf6gJhsfey6JHV5H-9lnfgejpZIafKodEGd9Uhg>
 <xmx:2Va_ZYTpkE4zwgJpKDQzFAr4tZgRocHhImxxStp-RcMRk6z95meTgg>
Feedback-ID: ie8e14432:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id ABF9A36A0076; Sun,  4 Feb 2024 04:20:25 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-144-ge5821d614e-fm-20240125.002-ge5821d61
MIME-Version: 1.0
Message-Id: <a89e9035-66ec-484f-9f0f-99d7a07c228f@app.fastmail.com>
In-Reply-To: <Zb8tId0k1iNqFstx@iguana.24-8.net>
References: <Za90vAQlDhbLpY67@iguana.24-8.net>
 <20240127083730.GA159729@workstation.local>
 <ZbTlaCCbpxQoqo0i@iguana.24-8.net> <20240131142714.GA60028@workstation.local>
 <Zb8tId0k1iNqFstx@iguana.24-8.net>
Date: Sun, 04 Feb 2024 18:19:51 +0900
From: "Takashi Sakamoto" <o-takashi@sakamocchi.jp>
To: "Adam Goldman" <adamg@pobox.com>
Subject: Re: [PATCH] firewire: core: send bus reset promptly on gap count error
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sun, Feb 4, 2024, at 15:22, Adam Goldman wrote: > Is
 the following description acceptable? > > If we are bus manager and the bus
 has inconsistent gap counts, send a bus > reset immediately instead [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.19 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rWYg2-0000UD-Kc
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Sun, Feb 4, 2024, at 15:22, Adam Goldman wrote:
> Is the following description acceptable?
>
> If we are bus manager and the bus has inconsistent gap counts, send a bus 
> reset immediately instead of trying to read the root node's config ROM 
> first. Otherwise, we could spend a lot of time trying to read the config 
> ROM but never succeeding.
>
> This eliminates a 50+ second delay before the FireWire bus is usable after 
> a newly connected device is powered on in certain circumstances.
>
> The delay occurs if a gap count inconsistency occurs, we are not the root 
> node, and we become bus manager. One scenario that causes this is with a TI 
> XIO2213B OHCI, the first time a Sony DSR-25 is powered on after being 
> connected to the FireWire cable. In this configuration, the Linux box will 
> not receive the initial PHY configuration packet sent by the DSR-25 as IRM, 
> resulting in the DSR-25 having a gap count of 44 while the Linux box has a 
> gap count of 63.
>
> FireWire devices have a gap count parameter, which is set to 63 on power-up 
> and can be changed with a PHY configuration packet. This determines the 
> duration of the subaction and arbitration gaps. For reliable communication, 
> all nodes on a FireWire bus must have the same gap count.
>
> A node may have one or more of the following roles: root node, bus manager 
> (BM), isochronous resource manager (IRM), and cycle master. Unless a root 
> node was forced with a PHY configuration packet, any node might become root 
> node after a bus reset. Only the root node can become cycle master. If the 
> root node is not cycle master capable, the BM or IRM should force a change 
> of root node.
>
> After a bus reset, each node sends a self-ID packet, which contains its 
> current gap count. A single bus reset does not change the gap count, but 
> two bus resets in a row will set the gap count to 63. Because a consistent 
> gap count is required for reliable communication, IEEE 1394a-2000 requires 
> that the bus manager generate a bus reset if it detects that the gap count 
> is inconsistent.
>
> When the gap count is inconsistent, build_tree() will notice this after the 
> self identification process. It will set card->gap_count to the invalid 
> value 0. If we become bus master, this will force bm_work() to send a bus 
> reset when it performs gap count optimization.
>
> After a bus reset, there is no bus manager. We will almost always try to 
> become bus manager. Once we become bus manager, we will first determine 
> whether the root node is cycle master capable. Then, we will determine if 
> the gap count should be changed. If either the root node or the gap count 
> should be changed, we will generate a bus reset.
>
> To determine if the root node is cycle master capable, we read its 
> configuration ROM. bm_work() will wait until we have finished trying to 
> read the configuration ROM.
>
> However, an inconsistent gap count can make this take a long time. 
> read_config_rom() will read the first few quadlets from the config ROM. Due 
> to the gap count inconsistency, eventually one of the reads will time out. 
> When read_config_rom() fails, fw_device_init() calls it again until 
> MAX_RETRIES is reached. This takes 50+ seconds.
>
> Once we give up trying to read the configuration ROM, bm_work() will wake 
> up, assume that the root node is not cycle master capable, and do a bus 
> reset. Hopefully, this will resolve the gap count inconsistency.
>
> This change makes bm_work() check for an inconsistent gap count before 
> waiting for the root node's configuration ROM. If the gap count is 
> inconsistent, bm_work() will immediately do a bus reset. This eliminates 
> the 50+ second delay and rapidly brings the bus to a working state.
>
> I considered that if the gap count is inconsistent, a PHY configuration 
> packet might not be successful, so it could be desirable to skip the PHY 
> configuration packet before the bus reset in this case. However, IEEE 
> 1394a-2000 and IEEE 1394-2008 say that the bus manager may transmit a PHY 
> configuration packet before a bus reset when correcting a gap count error. 
> Since the standard endorses this, I decided it's safe to retain the PHY 
> configuration packet transmission.
>
> Normally, after a topology change, we will reset the bus a maximum of 5 
> times to change the root node and perform gap count optimization. However, 
> if there is a gap count inconsistency, we must always generate a bus reset. 
> Otherwise the gap count inconsistency will persist and communication will 
> be unreliable. For that reason, if there is a gap count inconstency, we 
> generate a bus reset even if we already reached the 5 reset limit.
>
> -- Adam

It looks preferable in this case, I think. We are going to change the part
of fundamentals in this software stack, thus the longer description is
inevitable.

I think it preferable as well to add code comment about your judge to
retain sending PHY configuration packet in the case. Additionally, it
is helpful to add code comment about "bm_retries=0".


Thanks.


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
