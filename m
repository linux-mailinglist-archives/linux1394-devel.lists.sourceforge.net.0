Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DCC80DFE0
	for <lists+linux1394-devel@lfdr.de>; Tue, 12 Dec 2023 01:14:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rCqPI-0005RL-T5;
	Tue, 12 Dec 2023 00:13:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tobias-lists@23.gs>) id 1rCqPH-0005RE-BG
 for linux1394-devel@lists.sourceforge.net;
 Tue, 12 Dec 2023 00:13:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tn9MdOuHxAeDlW4bzt4Z7hmUwxa1+Q4nSRuZwbTJ3ec=; b=Y0qthVu4OcSEuG950SMTzVVXvG
 Zt2wIYyaMEKoFv95yE7z/ZmzLVX23gw0Y9TiT01Ik4NvHjU0BCAZNr4D5Bx9bKWCwxhcwFOnHAVX4
 oy0h7DFMAwqo0RALzYaKeeOWGvmT3j7FhFbOBc4H5ZLAsTpR0KXrsTvJ+QpPD+9f3h+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:Subject:To
 :From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Tn9MdOuHxAeDlW4bzt4Z7hmUwxa1+Q4nSRuZwbTJ3ec=; b=h
 Eg6c/LHVjXasp8T1f8M6Iwn4nc/6h2Qglbj/Z0KxZS4MLN72Nu2lorCuPcno5uDUxDyLm+YeV0MY9
 FSeV3rSoc6haPk0jzdR6By8JtUcTyO36EA9fIbRJDfBi7sMCYM9kEsoD59eEeea3cgXEZxZ5ZLi3D
 9dOpZjx3O407wSs8=;
Received: from zoidberg.org ([88.198.6.61] helo=heapsort.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA:256) (Exim 4.95) id 1rCqPD-000568-WC
 for linux1394-devel@lists.sourceforge.net;
 Tue, 12 Dec 2023 00:13:51 +0000
Received: from localhost ([2a0a:a548:40fc:0:33d6:fde7:98f2:7a69])
 (AUTH: PLAIN tobias, TLS: TLSv1/SSLv3,256bits,AES256-GCM-SHA384)
 by cthulhu.zoidberg.org with ESMTPSA; Tue, 12 Dec 2023 01:13:40 +0100
 id 00000000002A1BCB.6577A5B4.00003ADE
Date: Tue, 12 Dec 2023 01:13:40 +0100
From: Tobias Gruetzmacher <tobias-lists@23.gs>
To: linux1394-devel@lists.sourceforge.net
Subject: Hard crash when loading firewire-ohci
Message-ID: <20231212001340.t3eo27hjbwj742q3@23.gs>
X-Clacks-Overhead: GNU Terry Pratchett
Mime-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  [Resend because I wasn't subcribed before] Hi,
 in recent kernels
 (noticed with Debian kernel 6.5) I get a hard crash when the firewire-ohci
 module is loaded. 
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1rCqPD-000568-WC
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

[Resend because I wasn't subcribed before]

Hi,

in recent kernels (noticed with Debian kernel 6.5) I get a hard crash
when the firewire-ohci module is loaded.

I could bisect this issue to commit

dcadfd7f7c74ef9ee415e072a19bdf6c085159eb is the first bad commit
commit dcadfd7f7c74ef9ee415e072a19bdf6c085159eb
Author: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Date:   Tue May 30 08:12:40 2023 +0900

    firewire: core: use union for callback of transaction completion

But I'm not sure how to continue debugging from here, since I don't get
any output after

[Dec10 19:17] firewire_ohci 0000:0b:00.0: enabling device (0000 -> 0003)
[  +0.075791] firewire_ohci 0000:0b:00.0: added OHCI v1.0 device as card 0, 4 IR + 8 IT contexts, quirks 0x11

My hardware is:

0b:00.0 FireWire (IEEE 1394): VIA Technologies, Inc. VT6306/7/8 [Fire II(M)] IEEE 1394 OHCI Controller (rev c0) (prog-if 10 [OHCI])
        Subsystem: VIA Technologies, Inc. VT6306/7/8 [Fire II(M)] IEEE 1394 OHCI Controller
        Flags: medium devsel, IRQ 255
        Memory at fc800000 (32-bit, non-prefetchable) [disabled] [size=2K]
        I/O ports at d000 [disabled] [size=128]
        Capabilities: [50] Power Management version 2
        Kernel modules: firewire_ohci

There are currently no devices connected.

I could work around the issue by blacklisting the module, since I
currently don't use the FireWire hardware (but there are still some DV
tapes waiting to be transferred...)

Regards, Tobias


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
