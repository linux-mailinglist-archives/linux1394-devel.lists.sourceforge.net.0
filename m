Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AD982E7B1
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Jan 2024 02:53:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rPYdN-0004v9-Bw;
	Tue, 16 Jan 2024 01:52:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rPYdK-0004ux-Ja
 for linux1394-devel@lists.sourceforge.net;
 Tue, 16 Jan 2024 01:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wbgnsCsaVETUUhxMLbAB2m5OItdgPBL03I59fuZ5Zsc=; b=beZpRNSIDDoWjMGbaFvYWje8Vz
 QiM+wJjPj2PnpxlFWetDTg+u/wJVald2d3VNEDi1c9PxRYvbAS6VYly5tfgYEnw1bM2S7iOi9zDpT
 TKJA1iUjC+siOrLcrTvvN3lTQWwIW3RuNv4xyHLJxQCP2z+M8Gipnkj3v2Kf8ktw/pKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wbgnsCsaVETUUhxMLbAB2m5OItdgPBL03I59fuZ5Zsc=; b=EUzrGhrUA6u4/ZXjjomc0/6Oi4
 gQe30ZcTQJ6qe9VypIOpEigC1BXNWRl5V/c9p52ISZmF4l9YBznJNkMVeYgZMKSGFBa6judCrb3Aq
 oo1xF+JRMUbMQfxURPeK8idBoiyFSD6fJwblBirLxT9RhbxK0T96dbnnSYwV8ZIGY/v0=;
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPYdG-0006lP-38 for linux1394-devel@lists.sourceforge.net;
 Tue, 16 Jan 2024 01:52:55 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 70D4B5C00E3;
 Mon, 15 Jan 2024 20:52:38 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 15 Jan 2024 20:52:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1705369958; x=
 1705456358; bh=wbgnsCsaVETUUhxMLbAB2m5OItdgPBL03I59fuZ5Zsc=; b=i
 6o33FZX1mbaRzlxu6Jm7pvHn5xTvgpv0wgEL6eyI7RGJXnNuBDYaDJS2G1CLvkZN
 svbqfKhli63uqj+NtzmXFo+hmf5eQG6GHzAnw6SzdMMifHuYNrlMFp1ybc7MFII8
 qIZYYodDVl/Zv9KM9qYOnkAMNMblZOlKuJdK2fbObX2EEgVgnsqTWIY4pxCBlptD
 h1GB/lF21KywR6RHdvADsXZsadCeDrshcc8LwISuep/RRZWK65RRg0V30H/QYK9d
 DQb+PW0DcfzbxcPcHLmljGlS5V8eT+22FQO7rZ7YQvpcRFgGivd70yFYk9f3fmSv
 AXuqJmTWjQJT+r5YZ4O4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1705369958; x=1705456358; bh=wbgnsCsaVETUUhxMLbAB2m5OItdg
 PBL03I59fuZ5Zsc=; b=dSoa1Wi9yeXwXQGFbO/WSCGZHlWFnrffb393xxDYTROP
 /mMUarwXFboXyglB+mvRmxF/rjGVb+PPtfe0EAqlv4UjCPBwAG8UcMw7eFDFVJNB
 unYO1s3CvvHDLnyhLyhEUBe6KoPr1k7utr0Z43LNa3NCC/6hXLvjpvvYWvFuz69z
 FS3EWBzQxiBwc/+1un2TcuutqYYNnOo8lp06EuM1PyH74V3KzlTDTMzrZaJL9iQs
 5qGljni3sUJvkaS+Jlhs6MxOrlcfbbylMcd8CIsTr2AATcZfEDzYx86nuvijW7jt
 7kp4gdNeNkLjZJOGN7UVJx+/bbMUiDKj0FTc8B1OJQ==
X-ME-Sender: <xms:ZuGlZbWznBGdRiojjp1x3iDBvjp7Dtns0-tIkAfy_Kb-sbW8HQRhQg>
 <xme:ZuGlZTk-_zHHjENs2ivEY0SCriwgxyUvGLhkFhB5W7wr0-pi8YGYb0FXPA-rMKYAq
 12OAeEy8mj0PFxtSSw>
X-ME-Received: <xmr:ZuGlZXYMgV0OAaEvnw6CWYb0toxcP5SK2M4A2m3OyzmdoHzl6HZqmXI16-W2C68SjAz7pq_oTjnVur2-AeIqzXQ5Du4GMewpfYr3>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejvddggedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhf
 dukeffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:ZuGlZWW-z9bFJGu7MbfQRlfDSsOIMuKoWbL9FYMPtH027PrFPTSjRQ>
 <xmx:ZuGlZVmT4nIe2K-G-qrlMAwCNmDOZ5cRzVJs3-d1C4-k_wehOZMHdA>
 <xmx:ZuGlZTdPzf_Es0oupCPtV07Havp06NQlI6_a0SFAZn5KKMzL9odwiA>
 <xmx:ZuGlZUsCu3P5umf_B68u7BfAEX7Qp4PyH31BJCg6HuXq8Yu6o2eWMw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Jan 2024 20:52:37 -0500 (EST)
Date: Tue, 16 Jan 2024 10:52:35 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Tobias Gruetzmacher <tobias-lists@23.gs>
Subject: Re: Hard crash when loading firewire-ohci
Message-ID: <20240116015235.GB89379@workstation.local>
Mail-Followup-To: Tobias Gruetzmacher <tobias-lists@23.gs>,
 linux1394-devel@lists.sourceforge.net
References: <20231212001340.t3eo27hjbwj742q3@23.gs>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231212001340.t3eo27hjbwj742q3@23.gs>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The change for 1394 OHCI driver, aimed at suppressing
 the unexpected system reboot in AMD Ryzen machine[1], has been merged into
 Linux kernel v6.7[2]. It has also been applied to the following release [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPYdG-0006lP-38
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

The change for 1394 OHCI driver, aimed at suppressing the unexpected
system reboot in AMD Ryzen machine[1], has been merged into Linux kernel
v6.7[2]. It has also been applied to the following releases of stable and
longterm kernels.

* 6.6.11[3]
* 6.1.72[4]
* 5.15.147[5]
* 5.10.208[6]
* 5.4.267[7]
* 4.19.305[8]
* 4.14.336[9]

Once the downstream distribution project provides the corresponding kernel
packages, you should no longer encounter the unexpected system reboot.

Note that the following combination of hardware is not necessarily suitable,
depending on your use case:

* Any type of AMD Ryzen machine
* 1394 OHCI hardware consists of:
    * Asmedia ASM1083/1085
    * VIA VT6306/6307/6308

When working with time-aware protocol, such as audio sample processing, it
is advisable to avoid the combination. The change accompanies a functional
limitation that the software stack does not provides precise hardware time
in this case.

If you choose to continue using AMD Ryzen machine, the recommendation is
to replace the 1394 OHCI hardware with another one. Conversely, if you
choose to continue using the 1394 OHCI hardware, the recommendation is to
use the machine provided by vendors other than AMD.

Thanks for your report and long patience.

[1] https://git.kernel.org/torvalds/linux/c/ac9184fbb847
[2] https://lore.kernel.org/lkml/CAHk-=widprp4XoHUcsDe7e16YZjLYJWra-dK0hE1MnfPMf6C3Q@mail.gmail.com/
[3] https://lore.kernel.org/lkml/2024011058-sheep-thrower-d2f8@gregkh/
[4] https://lore.kernel.org/lkml/2024011052-unsightly-bronze-e628@gregkh/
[5] https://lore.kernel.org/lkml/2024011541-defective-scuff-c55e@gregkh/
[6] https://lore.kernel.org/lkml/2024011532-lustiness-hybrid-fc72@gregkh/
[7] https://lore.kernel.org/lkml/2024011519-mating-tag-1f62@gregkh/
[8] https://lore.kernel.org/lkml/2024011508-shakiness-resonant-f15e@gregkh/
[9] https://lore.kernel.org/lkml/2024011046-ecology-tiptoeing-ce50@gregkh/

On Tue, Dec 12, 2023 at 01:13:40AM +0100, Tobias Gruetzmacher wrote:
> [Resend because I wasn't subcribed before]
> 
> Hi,
> 
> in recent kernels (noticed with Debian kernel 6.5) I get a hard crash
> when the firewire-ohci module is loaded.
> 
> I could bisect this issue to commit
> 
> dcadfd7f7c74ef9ee415e072a19bdf6c085159eb is the first bad commit
> commit dcadfd7f7c74ef9ee415e072a19bdf6c085159eb
> Author: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Date:   Tue May 30 08:12:40 2023 +0900
> 
>     firewire: core: use union for callback of transaction completion
> 
> But I'm not sure how to continue debugging from here, since I don't get
> any output after
> 
> [Dec10 19:17] firewire_ohci 0000:0b:00.0: enabling device (0000 -> 0003)
> [  +0.075791] firewire_ohci 0000:0b:00.0: added OHCI v1.0 device as card 0, 4 IR + 8 IT contexts, quirks 0x11
> 
> My hardware is:
> 
> 0b:00.0 FireWire (IEEE 1394): VIA Technologies, Inc. VT6306/7/8 [Fire II(M)] IEEE 1394 OHCI Controller (rev c0) (prog-if 10 [OHCI])
>         Subsystem: VIA Technologies, Inc. VT6306/7/8 [Fire II(M)] IEEE 1394 OHCI Controller
>         Flags: medium devsel, IRQ 255
>         Memory at fc800000 (32-bit, non-prefetchable) [disabled] [size=2K]
>         I/O ports at d000 [disabled] [size=128]
>         Capabilities: [50] Power Management version 2
>         Kernel modules: firewire_ohci
> 
> There are currently no devices connected.
> 
> I could work around the issue by blacklisting the module, since I
> currently don't use the FireWire hardware (but there are still some DV
> tapes waiting to be transferred...)
> 
> Regards, Tobias


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
