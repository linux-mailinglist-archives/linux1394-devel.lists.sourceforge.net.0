Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BABE81FCEF
	for <lists+linux1394-devel@lfdr.de>; Fri, 29 Dec 2023 04:58:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rJ40W-0005KO-BO;
	Fri, 29 Dec 2023 03:58:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rJ40U-0005KF-VF
 for linux1394-devel@lists.sourceforge.net;
 Fri, 29 Dec 2023 03:57:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=32++MlctQnpiXBMjonb/FCIOqh7Sk/QwQuAJH3L64QI=; b=Vm98SQgnIB9eohvuJoYht0938S
 ssPO8K6qcOuACvq+ELga8BAzNYHWmo88ZwoDGj9YS/j+Fz60n1lxn3N/xCe44v+wVfAV2aFPBLj9o
 mHHG2atp7GtkyvxbcQyc5ilxnatGWGoZ5+NSgg7Q4PzrCHp1Wl3j32F9uwqIe7Px7mpM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=32++MlctQnpiXBMjonb/FCIOqh7Sk/QwQuAJH3L64QI=; b=e
 cqtl6aT2gTfTeWSvwyZ/A8oiQ3vZUYzRBU0Nw4Kgyd54Q/2imNmCJ4L7/1lgGEd10CfPui0sMkgq8
 sB374cOhNTam6Veb3tUrRfshWeweAL+Jd62Ih8y+4lLu98jgdiqYkxEr/4HvsR+8j/mkZyLJiLsGu
 eb961EjOAEvs5OdM=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rJ40R-0006UP-85 for linux1394-devel@lists.sourceforge.net;
 Fri, 29 Dec 2023 03:57:59 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id DFDFD5C0211;
 Thu, 28 Dec 2023 22:57:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Thu, 28 Dec 2023 22:57:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1703822261; x=1703908661; bh=32++MlctQn
 piXBMjonb/FCIOqh7Sk/QwQuAJH3L64QI=; b=noC2c9zp6dlW33tHRBdtekLw5j
 p64qKqU0ZPR6qdxn5YS/mzz3CICrzakekT2phhmVlR64rQPWllOM9hGj/DOLH3wV
 DYRunWlOs0XvMr180ksbJ7CVXCI1FnRYbDMxZ34qMl1PmzYfoLbBRyJ5/WwqYhOY
 j9aqyH3nOWvCTa9Jx6yEcyE6cPnkVhv2hRAqFNqYPqcp4tDQXyuajDeL+3HHbMR+
 Aidr6w8v+CJmegzn2bmdNyoamxW4d9Trh2ng+skpxJRQfjbsQO/PdOETfwaD4k0t
 5S7sTu1BRA2e7YpLKZlD4TifGSpP5n5CfWamXWu3G9czHEh3yq+7nCIpI9Fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1703822261; x=1703908661; bh=32++MlctQnpiXBMjonb/FCIOqh7S
 k/QwQuAJH3L64QI=; b=ZDgM8txCIAcfUcnJF/LiSWZtVWZ6wGfDFpY4/5s8H9VH
 2q45HpF8Rf1SNY4TqYl+/PiQlFm01TiFJgY3rWzkJtTdGiwY4gxOI+6pPk6a/dT4
 LZCjpUHfd2nH/rR4Ll/ne+4XuRJBM6cD2aV2mkisQDjnvhhuCzScL1XgzSvlJNZA
 zR6ArOo0A1i9V/2QwUT8cdeEd2jvDehm2ObGSktiubuqfX2cif2Rx0VQP1kzkZhN
 kqC08LNu2duM2zySRqLtcaUFWqeCrhXvAUW+YblRFHto7pdAS064etBec8z8f7oe
 YA2BFqFWWDMF4CtrRyU5NPRX7J9SCz8KD8HAhr4ouA==
X-ME-Sender: <xms:tUOOZYwl_oYfi5V42ndoyYORHya1wpXrAxc5p_jqVcaioJ2IOq37nA>
 <xme:tUOOZcTg9xzO4E6viyJHlwvPjUPrnx9lAEQW7xDqoJiptNoGUuVQ-oBdbYFIrzOqk
 GkT11sY12ngBmoQCyo>
X-ME-Received: <xmr:tUOOZaUjiy1ZcG-CwLxjB4neEhwoZqdeuKaYG62qbKW71s-DE0tNkmQe0y4prxEX62pcpH0Qb05RjqhmlEtgkYR1i_-_AFImALsglMPyt2Wk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdefvddgieeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhushhpvggtthffohhmrghinhculdegledmnecujfgurhephffvvefufffkofgggfes
 tdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqth
 grkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgeei
 tdetvddtfeeuhffgfeffveefgfevtdduveevieettefgueeivdetvedugfeinecuffhomh
 grihhnpehsuhhsvgdrtghomhdpkhgvrhhnvghlrdhorhhgpdhsohhurhgtvghfohhrghgv
 rdhnvghtpdhrvgguhhgrthdrtghomhdplhgruhhntghhphgrugdrnhgvthenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:tUOOZWjXQ50HGXErigUlxdHBuIDgrWMYA7e1XdrhG8BwMZZ4ecOYAA>
 <xmx:tUOOZaDrjek2KQdF7B1jOaCahqrzgBBHdwkcKIFkyB2cEbUZN1VFhA>
 <xmx:tUOOZXKvhWuzQT-eyszVRdL6b5nfQIGGRwRfS4Wjdn77lWmCutM_CQ>
 <xmx:tUOOZR4sWBEVA0kj7kgq9X6GSOqRlRaKQsG6W1LAiW9uIyJgM6fkxg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 28 Dec 2023 22:57:39 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firewire: ohci: suppress unexpected system reboot in AMD
 Ryzen machines and ASM108x/VT630x PCIe cards
Date: Fri, 29 Dec 2023 12:57:35 +0900
Message-Id: <20231229035735.11127-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: VIA VT6306/6307/6308 provides PCI interface compliant to 1394
 OHCI. When the hardware is combined with Asmedia ASM1083/1085 PCIe-to-PCI
 bus bridge, it appears that accesses to its 'Isochronous Cycle T [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rJ40R-0006UP-85
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
Cc: Jiri Slaby <jirislaby@kernel.org>,
 Mario Limonciello <mario.limonciello@amd.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

VIA VT6306/6307/6308 provides PCI interface compliant to 1394 OHCI. When
the hardware is combined with Asmedia ASM1083/1085 PCIe-to-PCI bus bridge,
it appears that accesses to its 'Isochronous Cycle Timer' register (offset
0xf0 on PCI I/O space) often causes unexpected system reboot in any type
of AMD Ryzen machine (both 0x17 and 0x19 families). It does not appears in
the other type of machine (AMD pre-Ryzen machine, Intel machine, at least),
or in the other OHCI 1394 hardware (e.g. Texas Instruments).

The issue explicitly appears at a commit dcadfd7f7c74 ("firewire: core:
use union for callback of transaction completion") added to v6.5 kernel.
It changed 1394 OHCI driver to access to the register every time to
dispatch local asynchronous transaction. However, the issue exists in
older version of kernel as long as it runs in AMD Ryzen machine, since
the access to the register is required to maintain bus time. It is not
hard to imagine that users experience the unexpected system reboot when
generating bus reset by plugging any devices in, or reading the register
by time-aware application programs; e.g. audio sample processing.

Well, this commit suppresses the system reboot in the combination of
hardware. It avoids the access itself. As a result, the software stack can
not provide the hardware time anymore to unit drivers, userspace
applications, and nodes in the same IEEE 1394 bus. It brings apparent
disadvantage since time-aware application programs require it, while
time-unaware applications are available again; e.g. sbp2.

Cc: stable@vger.kernel.org
Reported-by: Jiri Slaby <jirislaby@kernel.org>
Closes: https://bugzilla.suse.com/show_bug.cgi?id=1215436
Reported-by: Mario Limonciello <mario.limonciello@amd.com>
Closes: https://bugzilla.kernel.org/show_bug.cgi?id=217994
Reported-by: Tobias Gruetzmacher <tobias-lists@23.gs>
Closes: https://sourceforge.net/p/linux1394/mailman/message/58711901/
Closes: https://bugzilla.redhat.com/show_bug.cgi?id=2240973
Closes: https://bugs.launchpad.net/linux/+bug/2043905
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 49 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 7e88fd489741..62af3fa39a70 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -279,6 +279,8 @@ static char ohci_driver_name[] = KBUILD_MODNAME;
 #define QUIRK_TI_SLLZ059		0x20
 #define QUIRK_IR_WAKE			0x40
 
+#define QUIRK_REBOOT_BY_CYCLE_TIMER_READ	0x80000000
+
 /* In case of multiple matches in ohci_quirks[], only the first one is used. */
 static const struct {
 	unsigned short vendor, device, revision, flags;
@@ -1724,6 +1726,11 @@ static u32 get_cycle_time(struct fw_ohci *ohci)
 	s32 diff01, diff12;
 	int i;
 
+#if IS_ENABLED(CONFIG_X86)
+	if (ohci->quirks & QUIRK_REBOOT_BY_CYCLE_TIMER_READ)
+		return 0;
+#endif
+
 	c2 = reg_read(ohci, OHCI1394_IsochronousCycleTimer);
 
 	if (ohci->quirks & QUIRK_CYCLE_TIMER) {
@@ -3527,6 +3534,45 @@ static const struct fw_card_driver ohci_driver = {
 	.stop_iso		= ohci_stop_iso,
 };
 
+// On PCI Express Root Complex in any type of AMD Ryzen machine, VIA VT6306/6307/6308 with Asmedia
+// ASM1083/1085 brings an inconvenience that read accesses to 'Isochronous Cycle Timer' register
+// (at offset 0xf0 in PCI I/O space) often causes unexpected system reboot. The mechanism is not
+// clear, since the read access to the other registers is enough safe; e.g. 'Node ID' register,
+// while it is probable due to detection of any type of PCIe error.
+#if IS_ENABLED(CONFIG_X86)
+
+#define PCI_DEVICE_ID_ASMEDIA_ASM108X	0x1080
+
+static bool detect_vt630x_with_asm1083_on_amd_ryzen_machine(const struct pci_dev *pdev,
+							    struct fw_ohci *ohci)
+{
+	const struct pci_dev *pcie_to_pci_bridge;
+	const struct cpuinfo_x86 *cinfo = &cpu_data(0);
+
+	// Detect any type of AMD Ryzen machine.
+	if (cinfo->x86_vendor != X86_VENDOR_AMD || cinfo->x86 < 0x17)
+		return false;
+
+	// Detect VIA VT6306/6307/6308.
+	if (pdev->vendor != PCI_VENDOR_ID_VIA)
+		return false;
+	if (pdev->device != PCI_DEVICE_ID_VIA_VT630X)
+		return false;
+
+	// Detect Asmedia ASM1083/1085.
+	pcie_to_pci_bridge = pdev->bus->self;
+	if (pcie_to_pci_bridge->vendor != PCI_VENDOR_ID_ASMEDIA)
+		return false;
+	if (pcie_to_pci_bridge->device != PCI_DEVICE_ID_ASMEDIA_ASM108X)
+		return false;
+
+	return true;
+}
+
+#else
+#define detect_vt630x_with_asm1083_on_amd_ryzen_machine(pdev)	false
+#endif
+
 #ifdef CONFIG_PPC_PMAC
 static void pmac_ohci_on(struct pci_dev *dev)
 {
@@ -3630,6 +3676,9 @@ static int pci_probe(struct pci_dev *dev,
 	if (param_quirks)
 		ohci->quirks = param_quirks;
 
+	if (detect_vt630x_with_asm1083_on_amd_ryzen_machine(dev, ohci))
+		ohci->quirks |= QUIRK_REBOOT_BY_CYCLE_TIMER_READ;
+
 	/*
 	 * Because dma_alloc_coherent() allocates at least one page,
 	 * we save space by using a common buffer for the AR request/
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
