Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0FE15640E
	for <lists+linux1394-devel@lfdr.de>; Sat,  8 Feb 2020 12:49:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1j0Oc6-0007EK-QL; Sat, 08 Feb 2020 11:49:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <juergh@gmail.com>) id 1j0Oc5-0007ED-0p
 for linux1394-devel@lists.sourceforge.net; Sat, 08 Feb 2020 11:49:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oqPrclpu51i2LUY+PfOHGJ56w4vnqnhURKN3yazoZVY=; b=EDqyvBplKis2+nUjvDpdcqZzbU
 iF0jhZYMCdfi7t85x1UvYCe4uL5Pe9CbLLa1nbIRYD8bTIsOO0MFULLZACVwU1HCAE4P4Att9Kaby
 akvfvouavXdGB4LX9fngh6rU6/l0LLaPWSOqhFYdlqu0mq+PgGPLKAx/IK0/xu0+VpN0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oqPrclpu51i2LUY+PfOHGJ56w4vnqnhURKN3yazoZVY=; b=V
 ryaUuJYVEq6ZV/D1BKuSmT428nG8x7u8ddIUhZ8toB2WYLjcVNsumbG1YlM7PRYoFVa1VK5Gr7l6Z
 sdrjw9wVoSYPQglmj+LCtdFKOod7vJrUsFBO75wYoNIPsDMUOO830OQbyUq5C/WqP0PiFa0Y+rb93
 lmc8UzDcQsP3gxR4=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1j0Oc3-00EZRu-GH
 for linux1394-devel@lists.sourceforge.net; Sat, 08 Feb 2020 11:49:28 +0000
Received: by mail-ot1-f48.google.com with SMTP id r16so1905810otd.2
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 08 Feb 2020 03:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=oqPrclpu51i2LUY+PfOHGJ56w4vnqnhURKN3yazoZVY=;
 b=q/UaMfCGRhWDjbMtjfVDfMcTbHT37qouYnLvBivNZQxCfp0s8lMyEQg0YIS/Uvklci
 3M5akDYDhGgzYqEqaQUANRPxaOnlICpo28ToV16bSEya9zfyH9u7KdTYbE3I13KSc9iH
 m2cTNLPhVtsFkHgL3UfgH3hw0nwbqwvkLmGUjSjORRCvo9ecpnKfkpdhrCH1O3gh16xB
 jaDnNoKH/ucKxWuhnYRw6SBbqQ1b3Qy9ejVaME0gWZQzvm5R1/3b/Viqcap3pLFvUHch
 DLhSE65vcsJpGMZ8ekaVjJ8hRaD1UnRBni/GB/fmhQ5z35dRQjqBKev2fT5FSkgodCjN
 LYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=oqPrclpu51i2LUY+PfOHGJ56w4vnqnhURKN3yazoZVY=;
 b=KywFNgKgUJ3yXDL2CgkY3qcZA058zyhu7agKrclXqw06gc73yBHDtW0uNUlxUywd9E
 8eSgLAMmrXkyM71D7DUX9izdFExy636g07NQnWWtXu4S3GgsLz3RaGbA9Rabzc1+j74/
 epeSPFR4tjygWC55alFxhJvmJfk+JEBYqTz38Ipi6UuO3UFTaIt1k3W3qXov/o4A55LC
 kcs+ZdZX+MfFHAmwmvb3zNWxw0Dgko4mJ7Asytca9RJ5NoKNg0kDOpQR47ri4ugCAsmM
 LhJBGm5eQGmykhNeYWi62Lk4ROgbieKt8e5WqDSUFceaTBjQDgdb+dboktlxI6ug4+yl
 k+OQ==
X-Gm-Message-State: APjAAAXlAxBl2gIyWohQyqk6ElAbEWOykQ7P5T1VXsVfg0AW19agoZti
 XFHK7W12XQG7JUMNKjaFBvShq356YFzOiUFX60v+2wqCzTA=
X-Google-Smtp-Source: APXvYqy6qyOuR9UjEtwyzhc+QXoLm9al0U14jjR+wVAlQ/WgCjIhNUQHS7KLbhhWOEUiJLNY5QG7VWMANllt16t1X7I=
X-Received: by 2002:a05:6830:1188:: with SMTP id
 u8mr3155332otq.274.1581162561319; 
 Sat, 08 Feb 2020 03:49:21 -0800 (PST)
MIME-Version: 1.0
From: Juerg Haefliger <juergh@gmail.com>
Date: Sat, 8 Feb 2020 12:49:10 +0100
Message-ID: <CADLDEKvqqr4bgAvAE3SC-qvYc2MSwuALKZvAyR4b8XHvQxDSjA@mail.gmail.com>
Subject: VIA VT6307 problems
To: linux1394-devel@lists.sourceforge.net
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.48 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (juergh[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1j0Oc3-00EZRu-GH
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

I've just purchased a firewire card based on the VIA VT6307L chip and
as soon as I plug in and turn on a DV camera I get repeated kernel
messages like [1].

$ sudo lspci -vvv -s 01:00
01:00.0 FireWire (IEEE 1394): VIA Technologies, Inc. VT6306/7/8 [Fire
II(M)] IEEE 1394 OHCI Controller (rev 80) (prog-if 10 [OHCI])
    Subsystem: VIA Technologies, Inc. VT6306/7/8 [Fire II(M)] IEEE
1394 OHCI Controller
    Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping+ SERR+ FastB2B- DisINTx-
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
    Latency: 32 (8000ns max), Cache Line Size: 64 bytes
    Interrupt: pin A routed to IRQ 20
    Region 0: Memory at f7c00000 (32-bit, non-prefetchable) [size=2K]
    Region 1: I/O ports at e000 [size=128]
    Capabilities: [50] Power Management version 2
        Flags: PMEClk- DSI- D1- D2+ AuxCurrent=0mA
PME(D0-,D1-,D2+,D3hot+,D3cold+)
        Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
    Kernel driver in use: firewire_ohci
    Kernel modules: firewire_ohci

$ uname -a
Linux <SNIP> 5.3.0-29-generic #31-Ubuntu SMP Fri Jan 17 17:27:26 UTC
2020 x86_64 x86_64 x86_64 GNU/Linux

Thanks
...Juerg

[1]
Feb  8 10:11:17  kernel: [  199.341690] firewire_core 0000:01:00.0:
phy config: new root=ffc1, gap_count=5
Feb  8 10:11:18  kernel: [  199.343353] firewire_core 0000:01:00.0:
phy config: new root=ffc1, gap_count=5
Feb  8 10:11:18  kernel: [  199.346380] firewire_core 0000:01:00.0:
phy config: new root=ffc1, gap_count=5
Feb  8 10:11:18  kernel: [  199.435397] irq_handler: 28 callbacks suppressed
Feb  8 10:11:18  kernel: [  199.435402] firewire_ohci 0000:01:00.0:
isochronous cycle too long
Feb  8 10:11:18  kernel: [  199.866219] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:18  kernel: [  199.930241] firewire_core 0000:01:00.0:
rediscovered device fw0
Feb  8 10:11:18  kernel: [  199.930250] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:18  kernel: [  199.930252] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:18  kernel: [  199.930254] firewire_core 0000:01:00.0:
phy config: new root=ffc1, gap_count=5
Feb  8 10:11:18  kernel: [  200.030461] firewire_core 0000:01:00.0:
phy config: new root=ffc1, gap_count=5
Feb  8 10:11:18  kernel: [  200.137015] firewire_ohci 0000:01:00.0:
isochronous cycle too long
Feb  8 10:11:19  kernel: [  200.570213] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  200.570218] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  200.570221] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  200.570223] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  200.570225] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  200.570227] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  200.606226] firewire_core 0000:01:00.0:
rediscovered device fw0
Feb  8 10:11:19  kernel: [  200.606233] firewire_core 0000:01:00.0:
phy config: new root=ffc1, gap_count=5
Feb  8 10:11:19  kernel: [  200.966925] firewire_ohci 0000:01:00.0:
isochronous cycle too long
Feb  8 10:11:19  kernel: [  201.242192] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.242198] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.242200] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.242202] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.274194] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.274199] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.274201] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.274203] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.306192] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.306197] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.306200] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.306202] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.306204] firewire_core 0000:01:00.0:
giving up on node ffc0: reading config rom failed: bus reset
Feb  8 10:11:19  kernel: [  201.306206] firewire_core 0000:01:00.0:
giving up on node ffc1: reading config rom failed: bus reset


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
