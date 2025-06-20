Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7B5AE1C47
	for <lists+linux1394-devel@lfdr.de>; Fri, 20 Jun 2025 15:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Reply-To:From:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Message-ID:References:In-Reply-To:Subject:To:Date:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0gvadbu1613NX+pHjbWQJgpOUsyBPtdKF9HWcmhop3A=; b=f8MhjXP3P66PbRSvCKUfZIj47p
	MZPicA31i8lYEhmUjcjrMwf4G3ZolaxLvsdgDq62EdSOiGU+Cp/J9qs5ydfng88NlLgP/aNhuZSKO
	RRbM+pllgVAVpx6X4lhg42vz/6wNxViS2Bp4cKxyklFL1RaL7KGVVRYWXgQSpzDFEFDM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uSbrG-0000pL-2i;
	Fri, 20 Jun 2025 13:32:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <areyouloco@paranoici.org>) id 1uSbrD-0000pC-8y
 for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:References:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B2NU5zs+qMSEFKHhBS6DO8dUxEsWV8nNoqbzo8xPbn8=; b=OrAbxPDY2hT4oAJHSC411E2B46
 f4GRNmZH4sEvv+y/HKiVvrJHIrpcL7kuG8Cvz8hDzaxfYkKSMTn8YCFE+2/m1UrOCQbmgXM2vv23Q
 O/NyWgfhBlD4hZhjCsiDR19CizC1UUPDZpo4bBaITsc26mwPVLppYM2reyzF88pROkoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:References
 :In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B2NU5zs+qMSEFKHhBS6DO8dUxEsWV8nNoqbzo8xPbn8=; b=l/SYdt+DvsjccDA5yaaDWagZVV
 +Iix2BJjUGSpftX/MD9fazT5BwPMn9v9JMUrMGqQ8UjplVNWsSin+iVwkjYPeANFOTwjsnL0tmPVy
 /lX5K6cbJwv8chBLd3GwnrLEDO/T+CkjrwzYPz4OWWZBpGlyCi62QlIqitQwMr3xYngw=;
Received: from confino.investici.org ([93.190.126.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uSbrB-0005Cn-C4 for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jun 2025 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1750426345;
 bh=B2NU5zs+qMSEFKHhBS6DO8dUxEsWV8nNoqbzo8xPbn8=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=aRCaJnowgvfr4hkbkGIVHEfmliQkMq8Zk8RwtWYXvFbAtVwxq1M4RsKRycQnPbkgY
 ANoWha2Y3YrVWAAZpscjJ0YR5/7FyalvyF3LLps/yyKk5iLT/EmXVCPZDbUofiEW6H
 11+DlK7MiI11A9+pVzP9hT7/mx9BD5ScMfVPbiho=
Received: from mx1.investici.org (unknown [127.0.0.1])
 by confino.investici.org (Postfix) with ESMTP id 4bNz153C1lz110X;
 Fri, 20 Jun 2025 13:32:25 +0000 (UTC)
Received: from [93.190.126.19] (mx1.investici.org [93.190.126.19])
 (Authenticated sender: orest@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4bNz151Lttz110J; Fri, 20 Jun 2025 13:32:25 +0000 (UTC)
Date: Fri, 20 Jun 2025 13:32:26 +0000
To: linux1394-devel@lists.sourceforge.net,
 Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Jonathan Woithe <jwoithe@just42.net>
Subject: Re: Possible regression with the FW643 chipset
In-Reply-To: <20250620131249.GA5617@workstation.local>
References: <aFSbwoRkxkISumSk@marvin.atrad.com.au>
 <20250620131249.GA5617@workstation.local>
Message-ID: <E740AC57-6DAE-4659-84DB-598355A97C49@paranoici.org>
MIME-Version: 1.0
Autocrypt: addr=areyouloco@paranoici.org; prefer-encrypt=mutual; keydata=
 mDMEaA4TfBYJKwYBBAHaRw8BAQdA1Lu1FLVEpzdciB7kiHZ0gV3EXeLkhmVC7I5rCr6aaQq0JkFy
 ZVlvdUxvY28/IDxhcmV5b3Vsb2NvQHBhcmFub2ljaS5vcmc+iHIEExYIABoECwkIBwIVCAIWAQIZ
 AQWCaA4TfAKeAQKbAwAKCRDX3bQSIXXRBtUyAQDp2BxmuW0ywJWS9zB6Qx7SCKqVzVQ0IrH+RPzn
 VMONggD+L4G6IuGqWX9gKoIGteK78xyyO/K5ZaI9fUrf6EY3fgi4OARoDhN8EgorBgEEAZdVAQUB
 AQdA0rtHT93xcoMSipYUarYeSYImj6Dbrl/FsSZqjLZ1lU8DAQgHiHgEGBYIAAkFgmgOE3wCmwwA
 IQkQ1920EiF10QYWIQTKljMOut0PM5DWzeLX3bQSIXXRBouoAQDCVsZz3AF8kos+UIsxz2nF8qjI
 XoR/EH7qlmNdXmETYAD/TjGFZ93Dpek2RaZPlXanfruudh+oBm1qJjGwP5ddOQQ=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Takashi, Bit its not pci firewire controller itself not
 getting detected but root /dev/fw0 sometimes wont appear and thus connected
 devices /dev/fw1 /dev/fw2 because of that. Please if you could check dmesg
 log few times if GUID for device is there in dmesg. Cold boot and soft boot
 might be a difference here. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1uSbrB-0005Cn-C4
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
From: AreYouLoco? via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: AreYouLoco? <areyouloco@paranoici.org>
Content-Type: multipart/mixed; boundary="===============1524993243889497843=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============1524993243889497843==
Content-Type: multipart/alternative;
 boundary=----SWEQCUBIFX7BB79RDOW0X50YAQ8HRC
Content-Transfer-Encoding: 7bit

------SWEQCUBIFX7BB79RDOW0X50YAQ8HRC
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Takashi,

Bit its not pci firewire controller itself not getting detected but root /=
dev/fw0 sometimes wont appear and thus connected devices /dev/fw1 /dev/fw2 =
because of that=2E

Please if you could check dmesg log few times if GUID for device is there =
in dmesg=2E Cold boot and soft boot might be a difference here=2E

Good that you have this chipset around=2E Hope you can reproduce it=2E

Cheers

On June 20, 2025 1:12:49 PM UTC, Takashi Sakamoto <o-takashi@sakamocchi=2E=
jp> wrote:
>Hi,
>
>On Fri, Jun 20, 2025 at 08:52:42AM +0930, Jonathan Woithe wrote:
>> Alternatively, are there any FW643 users who have no problem with devic=
e
>> detection under a 6=2E12=2Ex (or later) kernel?  If so this would concl=
usively
>> rule out a kernel issue=2E
>
>I can not regenerate the issue with the kernel modules provided by the
>stock kernel in Ubuntu 25=2E04 amd64 (v6=2E14)=2E The machine consists of
>
>* ASUSTeK COMPUTER INC=2E TUF GAMING X570-PLUS
>* AMD Ryzen=E2=84=A2 7 5700G with Radeon=E2=84=A2 Graphics =C3=97 16
>
>
>```
>$ dpkg -S /lib/modules/6=2E14=2E0-15-generic/kernel/drivers/firewire/*
>linux-modules-extra-6=2E14=2E0-15-generic: /lib/modules/6=2E14=2E0-15-gen=
eric/kernel/drivers/firewire/firewire-core=2Eko=2Ezst
>linux-modules-extra-6=2E14=2E0-15-generic: /lib/modules/6=2E14=2E0-15-gen=
eric/kernel/drivers/firewire/firewire-net=2Eko=2Ezst
>linux-modules-extra-6=2E14=2E0-15-generic: /lib/modules/6=2E14=2E0-15-gen=
eric/kernel/drivers/firewire/firewire-ohci=2Eko=2Ezst
>linux-modules-extra-6=2E14=2E0-15-generic: /lib/modules/6=2E14=2E0-15-gen=
eric/kernel/drivers/firewire/firewire-sbp2=2Eko=2Ezst
>linux-modules-extra-6=2E14=2E0-15-generic: /lib/modules/6=2E14=2E0-15-gen=
eric/kernel/drivers/firewire/nosy=2Eko=2Ezst
>
>$ sudo lspci -vvnn
>06:00=2E0 FireWire (IEEE 1394) [0c00]: LSI Corporation FW643 [TrueFire] P=
CIe 1394b Controller [11c1:5901] (rev 06) (prog-if 10 [OHCI])
>        Subsystem: LSI Corporation FW643 [TrueFire] PCIe 1394b Controller=
 [11c1:5900]
>        Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParEr=
r- Stepping- SERR- FastB2B- DisINTx-
>        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbort- =
<TAbort- <MAbort- >SERR- <PERR- INTx-
>        Latency: 0, Cache Line Size: 64 bytes
>        Interrupt: pin A routed to IRQ 40
>        IOMMU group: 20
>        Region 0: Memory at fc600000 (64-bit, non-prefetchable) [size=3D4=
K]
>        Capabilities: [44] Power Management version 3
>                Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=3D375mA PME(D0+,D1=
+,D2+,D3hot+,D3cold+)
>                Status: D0 NoSoftRst- PME-Enable- DSel=3D0 DScale=3D0 PME=
+
>        Capabilities: [4c] MSI: Enable- Count=3D1/1 Maskable- 64bit+
>                Address: 0000000000000000  Data: 0000
>        Capabilities: [60] Express (v1) Endpoint, IntMsgNum 0
>                DevCap: MaxPayload 256 bytes, PhantFunc 0, Latency L0s <4=
us, L1 <64us
>                        ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset- S=
lotPowerLimit 0W TEE-IO-
>                DevCtl: CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
>                        RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop-
>                        MaxPayload 128 bytes, MaxReadReq 512 bytes
>                DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+=
 TransPend-
>                LnkCap: Port #0, Speed 2=2E5GT/s, Width x1, ASPM L0s L1, =
Exit Latency L0s <512ns, L1 <64us
>                        ClockPM+ Surprise- LLActRep- BwNot- ASPMOptComp-
>                LnkCtl: ASPM Disabled; RCB 64 bytes, LnkDisable- CommClk+
>                        ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
>                LnkSta: Speed 2=2E5GT/s, Width x1
>                        TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
>        Capabilities: [100 v1] Advanced Error Reporting
>                UESta:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt=
- RxOF- MalfTLP-
>                        ECRC- UnsupReq- ACSViol- UncorrIntErr- BlockedTLP=
- AtomicOpBlocked- TLPBlockedErr-
>                        PoisonTLPBlocked- DMWrReqBlocked- IDECheck- MisID=
ETLP- PCRC_CHECK- TLPXlatBlocked-
>                UEMsk:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt=
- RxOF- MalfTLP-
>                        ECRC- UnsupReq- ACSViol- UncorrIntErr- BlockedTLP=
- AtomicOpBlocked- TLPBlockedErr-
>                        PoisonTLPBlocked- DMWrReqBlocked- IDECheck- MisID=
ETLP- PCRC_CHECK- TLPXlatBlocked-
>                UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt=
- RxOF+ MalfTLP+
>                        ECRC- UnsupReq- ACSViol- UncorrIntErr- BlockedTLP=
- AtomicOpBlocked- TLPBlockedErr-
>                        PoisonTLPBlocked- DMWrReqBlocked- IDECheck- MisID=
ETLP- PCRC_CHECK- TLPXlatBlocked-
>                CESta:  RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNon=
FatalErr- CorrIntErr- HeaderOF-
>                CEMsk:  RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNon=
FatalErr+ CorrIntErr- HeaderOF-
>                AERCap: First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- E=
CRCChkCap+ ECRCChkEn-
>                        MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCa=
p-
>                HeaderLog: 00000000 00000000 00000000 00000000
>        Capabilities: [140 v1] Virtual Channel
>                Caps:   LPEVC=3D0 RefClk=3D100ns PATEntryBits=3D1
>                Arb:    Fixed- WRR32- WRR64- WRR128-
>                Ctrl:   ArbSelect=3DFixed
>                Status: InProgress-
>                VC0:    Caps:   PATOffset=3D00 MaxTimeSlots=3D1 RejSnoopT=
rans-
>                        Arb:    Fixed- WRR32- WRR64- WRR128- TWRR128- WRR=
256-
>                        Ctrl:   Enable+ ID=3D0 ArbSelect=3DFixed TC/VC=3D=
01
>                        Status: NegoPending- InProgress-
>                VC1:    Caps:   PATOffset=3D00 MaxTimeSlots=3D1 RejSnoopT=
rans-
>                        Arb:    Fixed- WRR32- WRR64- WRR128- TWRR128- WRR=
256-
>                        Ctrl:   Enable- ID=3D1 ArbSelect=3DFixed TC/VC=3D=
00
>                        Status: NegoPending- InProgress-
>        Capabilities: [170 v1] Device Serial Number 12-34-56-10-12-30-00-=
86
>        Kernel driver in use: firewire_ohci
>        Kernel modules: firewire_ohci
>
>```
>
>My Phonic FireFly 808 Universal is detected successfully even after the
>reported steps=2E
>
>
>Thanks
>
>Takashi Sakamoto
>
>
>_______________________________________________
>mailing list linux1394-devel@lists=2Esourceforge=2Enet
>https://lists=2Esourceforge=2Enet/lists/listinfo/linux1394-devel

------SWEQCUBIFX7BB79RDOW0X50YAQ8HRC
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">Hi Takashi,<br><br>Bit its not p=
ci firewire controller itself not getting detected but root /dev/fw0 someti=
mes wont appear and thus connected devices /dev/fw1 /dev/fw2 because of tha=
t=2E<br><br>Please if you could check dmesg log few times if GUID for devic=
e is there in dmesg=2E Cold boot and soft boot might be a difference here=
=2E<br><br>Good that you have this chipset around=2E Hope you can reproduce=
 it=2E<br><br>Cheers</div><br><br><div class=3D"gmail_quote"><div dir=3D"au=
to">On June 20, 2025 1:12:49 PM UTC, Takashi Sakamoto &lt;o-takashi@sakamoc=
chi=2Ejp&gt; wrote:</div><blockquote class=3D"gmail_quote" style=3D"margin:=
 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); padding-le=
ft: 1ex;">
<pre class=3D"k9mail"><div dir=3D"auto">Hi,<br><br>On Fri, Jun 20, 2025 at=
 08:52:42AM +0930, Jonathan Woithe wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #729=
fcf; padding-left: 1ex;"><div dir=3D"auto">Alternatively, are there any FW6=
43 users who have no problem with device<br>detection under a 6=2E12=2Ex (o=
r later) kernel?  If so this would conclusively<br>rule out a kernel issue=
=2E<br></div></blockquote><div dir=3D"auto"><br>I can not regenerate the is=
sue with the kernel modules provided by the<br>stock kernel in Ubuntu 25=2E=
04 amd64 (v6=2E14)=2E The machine consists of<br><br>* ASUSTeK COMPUTER INC=
=2E TUF GAMING X570-PLUS<br>* AMD Ryzen=E2=84=A2 7 5700G with Radeon=E2=84=
=A2 Graphics =C3=97 16<br><br><br>```<br>$ dpkg -S /lib/modules/6=2E14=2E0-=
15-generic/kernel/drivers/firewire/*<br>linux-modules-extra-6=2E14=2E0-15-g=
eneric: /lib/modules/6=2E14=2E0-15-generic/kernel/drivers/firewire/firewire=
-core=2Eko=2Ezst<br>linux-modules-extra-6=2E14=2E0-15-generic: /lib/modules=
/6=2E14=2E0-15-generic/kernel/drivers/firewire/firewire-net=2Eko=2Ezst<br>l=
inux-modules-extra-6=2E14=2E0-15-generic: /lib/modules/6=2E14=2E0-15-generi=
c/kernel/drivers/firewire/firewire-ohci=2Eko=2Ezst<br>linux-modules-extra-6=
=2E14=2E0-15-generic: /lib/modules/6=2E14=2E0-15-generic/kernel/drivers/fir=
ewire/firewire-sbp2=2Eko=2Ezst<br>linux-modules-extra-6=2E14=2E0-15-generic=
: /lib/modules/6=2E14=2E0-15-generic/kernel/drivers/firewire/nosy=2Eko=2Ezs=
t<br><br>$ sudo lspci -vvnn<br>06:00=2E0 FireWire (IEEE 1394) [0c00]: LSI C=
orporation FW643 [TrueFire] PCIe 1394b Controller [11c1:5901] (rev 06) (pro=
g-if 10 [OHCI])<br>        Subsystem: LSI Corporation FW643 [TrueFire] PCIe=
 1394b Controller [11c1:5900]<br>        Control: I/O- Mem+ BusMaster+ Spec=
Cycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-<br>    =
    Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast &gt;TAbort- &lt=
;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-<br>        Latency: 0, Cache=
 Line Size: 64 bytes<br>        Interrupt: pin A routed to IRQ 40<br>      =
  IOMMU group: 20<br>        Region 0: Memory at fc600000 (64-bit, non-pref=
etchable) [size=3D4K]<br>        Capabilities: [44] Power Management versio=
n 3<br>                Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=3D375mA PME(D=
0+,D1+,D2+,D3hot+,D3cold+)<br>                Status: D0 NoSoftRst- PME-Ena=
ble- DSel=3D0 DScale=3D0 PME+<br>        Capabilities: [4c] MSI: Enable- Co=
unt=3D1/1 Maskable- 64bit+<br>                Address: 0000000000000000  Da=
ta: 0000<br>        Capabilities: [60] Express (v1) Endpoint, IntMsgNum 0<b=
r>                DevCap: MaxPayload 256 bytes, PhantFunc 0, Latency L0s &l=
t;4us, L1 &lt;64us<br>                        ExtTag- AttnBtn- AttnInd- Pwr=
Ind- RBE+ FLReset- SlotPowerLimit 0W TEE-IO-<br>                DevCtl: Cor=
rErr+ NonFatalErr+ FatalErr+ UnsupReq+<br>                        RlxdOrd+ =
ExtTag- PhantFunc- AuxPwr- NoSnoop-<br>                        MaxPayload 1=
28 bytes, MaxReadReq 512 bytes<br>                DevSta: CorrErr- NonFatal=
Err- FatalErr- UnsupReq- AuxPwr+ TransPend-<br>                LnkCap: Port=
 #0, Speed 2=2E5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s &lt;512ns, L1=
 &lt;64us<br>                        ClockPM+ Surprise- LLActRep- BwNot- AS=
PMOptComp-<br>                LnkCtl: ASPM Disabled; RCB 64 bytes, LnkDisab=
le- CommClk+<br>                        ExtSynch- ClockPM- AutWidDis- BWInt=
- AutBWInt-<br>                LnkSta: Speed 2=2E5GT/s, Width x1<br>       =
                 TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-<br>     =
   Capabilities: [100 v1] Advanced Error Reporting<br>                UESta=
:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-<br>   =
                     ECRC- UnsupReq- ACSViol- UncorrIntErr- BlockedTLP- Ato=
micOpBlocked- TLPBlockedErr-<br>                        PoisonTLPBlocked- D=
MWrReqBlocked- IDECheck- MisIDETLP- PCRC_CHECK- TLPXlatBlocked-<br>        =
        UEMsk:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- Ma=
lfTLP-<br>                        ECRC- UnsupReq- ACSViol- UncorrIntErr- Bl=
ockedTLP- AtomicOpBlocked- TLPBlockedErr-<br>                        Poison=
TLPBlocked- DMWrReqBlocked- IDECheck- MisIDETLP- PCRC_CHECK- TLPXlatBlocked=
-<br>                UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCm=
plt- RxOF+ MalfTLP+<br>                        ECRC- UnsupReq- ACSViol- Unc=
orrIntErr- BlockedTLP- AtomicOpBlocked- TLPBlockedErr-<br>                 =
       PoisonTLPBlocked- DMWrReqBlocked- IDECheck- MisIDETLP- PCRC_CHECK- T=
LPXlatBlocked-<br>                CESta:  RxErr- BadTLP- BadDLLP- Rollover-=
 Timeout- AdvNonFatalErr- CorrIntErr- HeaderOF-<br>                CEMsk:  =
RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+ CorrIntErr- Head=
erOF-<br>                AERCap: First Error Pointer: 00, ECRCGenCap+ ECRCG=
enEn- ECRCChkCap+ ECRCChkEn-<br>                        MultHdrRecCap- Mult=
HdrRecEn- TLPPfxPres- HdrLogCap-<br>                HeaderLog: 00000000 000=
00000 00000000 00000000<br>        Capabilities: [140 v1] Virtual Channel<b=
r>                Caps:   LPEVC=3D0 RefClk=3D100ns PATEntryBits=3D1<br>    =
            Arb:    Fixed- WRR32- WRR64- WRR128-<br>                Ctrl:  =
 ArbSelect=3DFixed<br>                Status: InProgress-<br>              =
  VC0:    Caps:   PATOffset=3D00 MaxTimeSlots=3D1 RejSnoopTrans-<br>       =
                 Arb:    Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-<br> =
                       Ctrl:   Enable+ ID=3D0 ArbSelect=3DFixed TC/VC=3D01<=
br>                        Status: NegoPending- InProgress-<br>            =
    VC1:    Caps:   PATOffset=3D00 MaxTimeSlots=3D1 RejSnoopTrans-<br>     =
                   Arb:    Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-<br=
>                        Ctrl:   Enable- ID=3D1 ArbSelect=3DFixed TC/VC=3D0=
0<br>                        Status: NegoPending- InProgress-<br>        Ca=
pabilities: [170 v1] Device Serial Number 12-34-56-10-12-30-00-86<br>      =
  Kernel driver in use: firewire_ohci<br>        Kernel modules: firewire_o=
hci<br><br>```<br><br>My Phonic FireFly 808 Universal is detected successfu=
lly even after the<br>reported steps=2E<br><br><br>Thanks<br><br>Takashi Sa=
kamoto<hr>mailing list linux1394-devel@lists=2Esourceforge=2Enet<br><a href=
=3D"https://lists=2Esourceforge=2Enet/lists/listinfo/linux1394-devel">https=
://lists=2Esourceforge=2Enet/lists/listinfo/linux1394-devel</a><br></div></=
pre></blockquote></div></body></html>
------SWEQCUBIFX7BB79RDOW0X50YAQ8HRC--


--===============1524993243889497843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1524993243889497843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============1524993243889497843==--

