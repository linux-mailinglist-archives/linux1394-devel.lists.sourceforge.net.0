Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 040E5888600
	for <lists+linux1394-devel@lfdr.de>; Mon, 25 Mar 2024 02:22:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1roZ2A-0001Hk-Mn;
	Mon, 25 Mar 2024 01:21:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1roZ26-0001HZ-6R
 for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Mar 2024 01:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O/03a8VUsvCu5Ho2lWofHPeYJCGruXQzjVj9uGmC/bY=; b=QCNuK1qi5Y0jZA6yvcA2E/o9Td
 wvcgfvAn6iNU5QMAsaDfSuBrttIsNImS0RjZaYRJbSBqjPo972toX+H9WACihN+BemfiRjBepQ4F3
 LHKdoRMPhyBvEPYLT/aG0gDem7/6TO+5FF2nfjviuK+7iW42lA/3C5bITjLOAoLkk2ys=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O/03a8VUsvCu5Ho2lWofHPeYJCGruXQzjVj9uGmC/bY=; b=EOe5AmhRmY9L6ZQat01os2Gd95
 vX5aCksZn8lpENs8ZCnLR+qGNA2BPC3Kld3Roiy4TQv6un77akuCD6mS/mLrWZ98xpeC5so45pMAL
 H+egkOrmqffRkPQtQiHMQRNAg20dbCJUakAIeUggKhkuIKm4oG7mBRA2r8XRVb+zQjUA=;
Received: from fout4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roZ22-0003IB-Ku for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Mar 2024 01:21:50 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 4651E13800CA;
 Sun, 24 Mar 2024 21:21:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 24 Mar 2024 21:21:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711329701; x=
 1711416101; bh=O/03a8VUsvCu5Ho2lWofHPeYJCGruXQzjVj9uGmC/bY=; b=y
 /OJEo3ROdrpCl7D1hrNXl7DSKLX9FD1WJkyUa+0KSMIzJ0YEh+PKbx+EYAUp9WgX
 i1xk+2Pwnb7xfvvrOVJlkAcx63RnI6Zqgty+gpDsWRs8a6QUrDV1fOIb8+1nmTJ2
 eP/YE/nbFP30xxkxt/ROpUHyti2F4wrODIV7pvPC/eCFCK0n0S86LSb3VbQHGYl9
 gJZTSJBQqkSbRIBejT0U3prYVxW6U+4oVdu4vHEY+uLKWnhNwGZXXlWX/S66qW7c
 jce75nhEvXhuBaUB2y35X8He8yTZOVKP85XIC8v6lGp7G/XZKIFQOEnQ8r7S7wzf
 o3fjAHSnxosjuDk46SHdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1711329701; x=
 1711416101; bh=O/03a8VUsvCu5Ho2lWofHPeYJCGruXQzjVj9uGmC/bY=; b=E
 Zf8j4k4eUdifg3IS1Yaqfm187P578wbwEV++ixbC9d5YbPUEgweuNPWKk3uGW3zF
 H9u/7uWDIDEHWsnNFA9TOLWbnXnZIhyD0H5SLcpivFFU9PEUbTPfyuOOzP6wnm2G
 weRHeI3crgu4TgvS+PJESpNLavxI7pvIuvkmyk+8nT/UqRHHd4UEQjfzd8NoyV6C
 2moG2xBCq2NJHWblarhelQVjtSpPmCPlT4nIVOQ1mNiK7F3CmP1BntAHbWjQXcPC
 aPPEeqbhVJ8ssvGzwQVZynvPii+n6+JDY1YbnAuxjtOq7yPs0Cf5LmR9GOda5P0Y
 eGV2KsLKWukIBOLIC3usA==
X-ME-Sender: <xms:pdEAZtxasYvljIvamxA5bdUkcgTtCEWJAKlKZEB6q8T5tH4mQ1fwbA>
 <xme:pdEAZtRz66QLj3WqwaXB2S2_MQz3bobFyKeH4PB_LFw5J9jCgWneexWBUi2OhBE01
 xMhewZvxxRYT2BqKZ8>
X-ME-Received: <xmr:pdEAZnUhIVmVbf2E6MOecKYA2LPuVyNiBWUJHXGFiAas1foKC1vVJGh-bnYWbco3EkY7N_MkYv11rawLIvqVzmdCC3Jlb42T6K0sKfFdrmkAyg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtkedgfeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:pdEAZvjI6UkRMGqDA56AYdcjkx2E2t9-ptwnHB6Jx-cjpbZxzPpblQ>
 <xmx:pdEAZvAl_RMjVzVaA0CTDho29A8axqxZlZaHXWcJWF0VUgfzSXx5Vw>
 <xmx:pdEAZoJjBY0S_doiRlJnn4RvVPNekpI7FN--hQRzElaq4NUD6P1IYw>
 <xmx:pdEAZuC7J80cl9yvKyXEwMS2qqcWX9PwjQQmlPYI3dw4Oc3LR7a2OA>
 <xmx:pdEAZh0v2zFFBSbDAV_oi1fAvIozFOZW4PO0PZn5hsZa_TTGCRp8mw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Mar 2024 21:21:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: helgaas@kernel.org
Subject: Re: [PATCH v2] PCI: Mark LSI FW643 to avoid bus reset
Date: Mon, 25 Mar 2024 10:21:35 +0900
Message-ID: <20240325012135.36861-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229230013.GA369538@bhelgaas>
References: <20240229230013.GA369538@bhelgaas>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Bjorn Helgaas,
 (C.C.ed to linux1394-devel@lists.sourceforge.net)
 I have an objection to applying the change. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.147 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1roZ22-0003IB-Ku
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
Cc: linux-pci@vger.kernel.org, edmund.raile@proton.me,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Bjorn Helgaas,

(C.C.ed to linux1394-devel@lists.sourceforge.net)

I have an objection to applying the change.

I've been using the issued 1394 OHCI hardware in my development for recent
years, while I have never faced the reported trouble. I think there are
any misunderstanding or misjudge somwhow in the review process to apply it.

Would I ask your precise advice to regenerate the reported issue in my
local?

This is my 1394 OHCI hardware.

```
$ sudo lspci -vvvnns 06:00.0
06:00.0 FireWire (IEEE 1394) [0c00]: LSI Corporation FW643 [TrueFire] PCIe 1394b Controller [11c1:5901] (rev 06) (prog-if 10 [OHCI])
        Subsystem: LSI Corporation FW643 [TrueFire] PCIe 1394b Controller [11c1:5900]
        Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
        Interrupt: pin A routed to IRQ 255
        IOMMU group: 17
        Region 0: Memory at fc700000 (64-bit, non-prefetchable) [disabled] [size=4K]
        Capabilities: [44] Power Management version 3
                Flags: PMEClk- DSI- D1+ D2+ AuxCurrent=375mA PME(D0+,D1+,D2+,D3hot+,D3cold+)
                Status: D3 NoSoftRst- PME-Enable+ DSel=0 DScale=0 PME-
        Capabilities: [4c] MSI: Enable- Count=1/1 Maskable- 64bit+
                Address: 0000000000000000  Data: 0000
        Capabilities: [60] Express (v1) Endpoint, MSI 00
                DevCap: MaxPayload 256 bytes, PhantFunc 0, Latency L0s <4us, L1 <64us
                        ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset- SlotPowerLimit 0W
                DevCtl: CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
                        RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop-
                        MaxPayload 128 bytes, MaxReadReq 512 bytes
                DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
                LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s <512ns, L1 <64us
                        ClockPM+ Surprise- LLActRep- BwNot- ASPMOptComp-
                LnkCtl: ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
                        ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
                LnkSta: Speed 2.5GT/s, Width x1
                        TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
        Capabilities: [100 v1] Advanced Error Reporting
                UESta:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
                UEMsk:  DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
                UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
                CESta:  RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
                CEMsk:  RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
                AERCap: First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECRCChkEn-
                        MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
                HeaderLog: 00000000 00000000 00000000 00000000
        Capabilities: [140 v1] Virtual Channel
                Caps:   LPEVC=0 RefClk=100ns PATEntryBits=1
                Arb:    Fixed- WRR32- WRR64- WRR128-
                Ctrl:   ArbSelect=Fixed
                Status: InProgress-
                VC0:    Caps:   PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
                        Arb:    Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
                        Ctrl:   Enable+ ID=0 ArbSelect=Fixed TC/VC=01
                        Status: NegoPending- InProgress-
                VC1:    Caps:   PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
                        Arb:    Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
                        Ctrl:   Enable- ID=1 ArbSelect=Fixed TC/VC=00
                        Status: NegoPending- InProgress-
        Capabilities: [170 v1] Device Serial Number 12-34-56-10-12-30-00-86
        Kernel driver in use: vfio-pci
        Kernel modules: firewire_ohci
```

I use it in the following environment at present:

* Host system
    * AMD Ryzen 5 2400G
    * TUF GAMING X570-PLUS with BIOS 5003 (AGESA ComboV2PI 1.2.0.B)
        * SMT enabled
        * SVM enabled
        * IOMMU enabled
        * Secure boot disabled
    * Ubuntu 24.04 LTS amd64
        * linux-image-6.8.0-11-generic (6.8.0-11.11)
            * default kernel cmdline
        * QEMU 8.2.1 (1:8.2.1+ds-1ubuntu1)
        * Libvert 10.0.0 (10.0.0-2ubuntu1)
* Guest system
    * UEFI using OVMF
        * Seecure boot enabled
    * Ubuntu 24.04 LTS amd64 (the same as above)
        * default kernel cmdline

> Using LSI / Agere FW643 with vfio-pci will exhaust all
> pci_reset_fn_methods, the bus reset at the end causes a broken link
> only recoverable by removing power
> (power-off / suspend + rescan).
> Prevent this bus reset.
> With this change, the device can be assigned to VMs with VFIO.
> Note that it will not be reset, resulting in leaking state between VMs
> and host.
> 
> Signed-off-by: Edmund Raile <edmund.raile@proton.me>
> 
> I sincerely thank you for your patience and explaining
> the background of pci resets which I lacked.
> The commit message and comment now describe it correctly.
> The comment on leaking states was added.
> 
> Usefulness:
> 
> The LSI FW643 PCIe->FireWire 800 interface may be EOL but it is
> the only one that does not use a PCIe->PCI bridge.
> It is reliable and enables FireWire audio interfaces to be used
> on modern machines.
> 
> Virtualization allows for flexible access to professional audio
> software.
> 
> It has been used in at least the following Apple machines:
> MacBookPro10,1
> MacBookPro9,2
> MacBookPro6,2
> MacBookPro5,1
> Macmini6,1
> Macmini3,1
> iMac12,2
> iMac9,1
> iMac8,1
> 
> Implementation:
> 
> PCI_VENDOR_ID_ATT was reused as they are identical.
> 
>  drivers/pci/quirks.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
> index d797df6e5f3e..e0e4ad9e6d50 100644
> --- a/drivers/pci/quirks.c
> +++ b/drivers/pci/quirks.c
> @@ -3765,6 +3765,19 @@ DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_ATHEROS, 0x003e, quirk_no_bus_reset);
>   */
>  DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_CAVIUM, 0xa100, quirk_no_bus_reset);
>  
> +/*
> + * Using LSI / Agere FW643 with vfio-pci will exhaust all
> + * pci_reset_fn_methods, the bus reset at the end causes a broken link
> + * only recoverable by removing power
> + * (power-off / suspend + rescan).
> + * Prevent this bus reset.
> + * With this change, the device can be assigned to VMs with VFIO.
> + * Note that it will not be reset, resulting in leaking state between VMs
> + * and host.
> + */
> +DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_ATT, 0x5900, quirk_no_bus_reset);
> +DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_ATT, 0x5901, quirk_no_bus_reset);
> +
>  /*
>   * Some TI KeyStone C667X devices do not support bus/hot reset.  The PCIESS
>   * automatically disables LTSSM when Secondary Bus Reset is received and


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
