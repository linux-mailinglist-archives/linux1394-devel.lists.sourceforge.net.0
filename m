Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9272382FAB6
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Jan 2024 22:39:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rPr98-000234-Dj;
	Tue, 16 Jan 2024 21:38:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tobias-lists@23.gs>) id 1rPr97-00022t-Ca
 for linux1394-devel@lists.sourceforge.net;
 Tue, 16 Jan 2024 21:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 Mime-Version:References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G7MpXNVC4DsbMlx0uexQDMN65f90lSfmWzMnUmfmSuY=; b=K0dyV/pRdsEPIz8zWmG026BGaS
 wfb7E09ud3yZdoJIvFuZwBLH/nXxSR3cMLNe/k7WQ26BfHdwYabmzYdUbBnf/rcMpxzhtYKV9WOT2
 WJtEcZnX78sf5Z8/9d+Sox77r21x830oEHhXBHxROtRVF7ImHV0ho0m4bX4hMk0YtTbo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:Mime-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G7MpXNVC4DsbMlx0uexQDMN65f90lSfmWzMnUmfmSuY=; b=Ypuvg/cq+x3jGLU4GRwD5ZxDh/
 Tcqqc/e6YfcfAP45wIrv8fUaH+nCAUMH3QqM9NxxCnuPU5Ws5pQGZrNFuwOhVHORabxt4wzKMCulc
 iyMQ5/YVb43hzAatAzcbm1UhN8fpAblsoACd5Znr45w8kFndwqq9rTnnWz7C612ALNN8=;
Received: from zoidberg.org ([88.198.6.61] helo=heapsort.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA:256) (Exim 4.95) id 1rPr92-0008Ih-B7
 for linux1394-devel@lists.sourceforge.net;
 Tue, 16 Jan 2024 21:38:57 +0000
Received: from localhost ([2a0a:a548:562d:0:b962:5177:9015:cc27])
 (AUTH: PLAIN tobias, TLS: TLSv1/SSLv3,256bits,AES256-GCM-SHA384)
 by cthulhu.zoidberg.org with ESMTPSA; Tue, 16 Jan 2024 22:38:39 +0100
 id 00000000002A192D.65A6F75F.000010CA
Date: Tue, 16 Jan 2024 22:38:38 +0100
From: Tobias Gruetzmacher <tobias-lists@23.gs>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: Hard crash when loading firewire-ohci
Message-ID: <kfm24ewu33o2ct4fzfakovv73qaqfwrgrmpsit6z3cvzq3e5u3@r5uvb2pwqurt>
X-Clacks-Overhead: GNU Terry Pratchett
References: <20231212001340.t3eo27hjbwj742q3@23.gs>
 <20240116015235.GB89379@workstation.local>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240116015235.GB89379@workstation.local>
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, thank you very much. I was able to verify with 6.6.11
 that the crash is indeed gone. Meanwhile I learned through the retronetworking
 community
 (https://osmocom.org/projects/retronetworking/wiki/PCIe-%3EPCI_bridges)
 that those Asmedia PCI bridges are indeed known for interrupt problems [...]
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1rPr92-0008Ih-B7
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

thank you very much. I was able to verify with 6.6.11 that the crash is
indeed gone.

Meanwhile I learned through the retronetworking community
(https://osmocom.org/projects/retronetworking/wiki/PCIe-%3EPCI_bridges)
that those Asmedia PCI bridges are indeed known for interrupt
problems...

The unfortunate truth is that the Asmedia bridge and the 1394 live on
the same PCIe card (Amazon said it was this one:
https://www.amazon.de/gp/product/B07S9G4XGB) and I was under the
impression that is the only way to get Firewire ports on modern hardware
(which only has PCIe slots) - Or do "native" PCIe Firewire cards exist?

Regards, Tobias

On Tue, Jan 16, 2024 at 10:52:35AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> The change for 1394 OHCI driver, aimed at suppressing the unexpected
> system reboot in AMD Ryzen machine[1], has been merged into Linux kernel
> v6.7[2]. It has also been applied to the following releases of stable and
> longterm kernels.
> 
> * 6.6.11[3]
> * 6.1.72[4]
> * 5.15.147[5]
> * 5.10.208[6]
> * 5.4.267[7]
> * 4.19.305[8]
> * 4.14.336[9]
> 
> Once the downstream distribution project provides the corresponding kernel
> packages, you should no longer encounter the unexpected system reboot.
> 
> Note that the following combination of hardware is not necessarily suitable,
> depending on your use case:
> 
> * Any type of AMD Ryzen machine
> * 1394 OHCI hardware consists of:
>     * Asmedia ASM1083/1085
>     * VIA VT6306/6307/6308
> 
> When working with time-aware protocol, such as audio sample processing, it
> is advisable to avoid the combination. The change accompanies a functional
> limitation that the software stack does not provides precise hardware time
> in this case.
> 
> If you choose to continue using AMD Ryzen machine, the recommendation is
> to replace the 1394 OHCI hardware with another one. Conversely, if you
> choose to continue using the 1394 OHCI hardware, the recommendation is to
> use the machine provided by vendors other than AMD.
> 
> Thanks for your report and long patience.
> 
> [1] https://git.kernel.org/torvalds/linux/c/ac9184fbb847
> [2] https://lore.kernel.org/lkml/CAHk-=widprp4XoHUcsDe7e16YZjLYJWra-dK0hE1MnfPMf6C3Q@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/2024011058-sheep-thrower-d2f8@gregkh/
> [4] https://lore.kernel.org/lkml/2024011052-unsightly-bronze-e628@gregkh/
> [5] https://lore.kernel.org/lkml/2024011541-defective-scuff-c55e@gregkh/
> [6] https://lore.kernel.org/lkml/2024011532-lustiness-hybrid-fc72@gregkh/
> [7] https://lore.kernel.org/lkml/2024011519-mating-tag-1f62@gregkh/
> [8] https://lore.kernel.org/lkml/2024011508-shakiness-resonant-f15e@gregkh/
> [9] https://lore.kernel.org/lkml/2024011046-ecology-tiptoeing-ce50@gregkh/
> 
> On Tue, Dec 12, 2023 at 01:13:40AM +0100, Tobias Gruetzmacher wrote:
> > [Resend because I wasn't subcribed before]
> > 
> > Hi,
> > 
> > in recent kernels (noticed with Debian kernel 6.5) I get a hard crash
> > when the firewire-ohci module is loaded.
> > 
> > I could bisect this issue to commit
> > 
> > dcadfd7f7c74ef9ee415e072a19bdf6c085159eb is the first bad commit
> > commit dcadfd7f7c74ef9ee415e072a19bdf6c085159eb
> > Author: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> > Date:   Tue May 30 08:12:40 2023 +0900
> > 
> >     firewire: core: use union for callback of transaction completion
> > 
> > But I'm not sure how to continue debugging from here, since I don't get
> > any output after
> > 
> > [Dec10 19:17] firewire_ohci 0000:0b:00.0: enabling device (0000 -> 0003)
> > [  +0.075791] firewire_ohci 0000:0b:00.0: added OHCI v1.0 device as card 0, 4 IR + 8 IT contexts, quirks 0x11
> > 
> > My hardware is:
> > 
> > 0b:00.0 FireWire (IEEE 1394): VIA Technologies, Inc. VT6306/7/8 [Fire II(M)] IEEE 1394 OHCI Controller (rev c0) (prog-if 10 [OHCI])
> >         Subsystem: VIA Technologies, Inc. VT6306/7/8 [Fire II(M)] IEEE 1394 OHCI Controller
> >         Flags: medium devsel, IRQ 255
> >         Memory at fc800000 (32-bit, non-prefetchable) [disabled] [size=2K]
> >         I/O ports at d000 [disabled] [size=128]
> >         Capabilities: [50] Power Management version 2
> >         Kernel modules: firewire_ohci
> > 
> > There are currently no devices connected.
> > 
> > I could work around the issue by blacklisting the module, since I
> > currently don't use the FireWire hardware (but there are still some DV
> > tapes waiting to be transferred...)
> > 
> > Regards, Tobias
> 
> 
> Thanks
> 
> Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
