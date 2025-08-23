Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 852E9B32691
	for <lists+linux1394-devel@lfdr.de>; Sat, 23 Aug 2025 05:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LsatW7wzGld8SkCAKDUocGY9mIVk95KuL9CS/lz97QY=; b=kz8vkxh/qKoKrO1vA+fBOMhXvC
	WF1s1diVD0kxgLgUGYVud0s3Qr9JiblBEguzDUQj4PsW9cbO1Urtruv6FCOXecFz23kSBiWiHf7Tu
	jY/4TVO00WUxIkwFmYjEDScm3SD8BoyJ/BpGI9CmlBeRglw/HJt5h1lDmzK4OIj3XkWo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1upee0-00028k-6V;
	Sat, 23 Aug 2025 03:10:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1upedz-00028b-7L
 for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Aug 2025 03:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Aeil4IxTwnNb4l2xQs001wJqzMLlOVlrN2kqxgWY4Y=; b=hRuo1wIMp+5RpJ9WPCyo9a0ffM
 YJUGgmLqqV0eW45oIsdfQv/VS9pbOCElhpfNoedroBf+h/nbYe9S0ITSMRXWNFdl8ZyPcviGK1gPG
 AI02MKLdoWKDBsI5H65sb+ZYdA5FuZQarP+b+8R4jzeFoDSeeaT9gMvrSCM06bFaKOhU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8Aeil4IxTwnNb4l2xQs001wJqzMLlOVlrN2kqxgWY4Y=; b=YKeDdBuMD8Ndv3NXJkkDhsQwbH
 Dii3Q0RZPLcgMpJf2CkjrWpBgMWbj7q/OEMSAx0HhnDQwTLMd8vylLeXgoiYws/h7niqFkQOdXBnd
 jbftslp17eDhYy+Unfk7d1Wrg3tmDyRdrAoaJoWr8INN5b9q36ED0MAdQzv5ufLHaqmU=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1upedy-0004UQ-P9 for linux1394-devel@lists.sourceforge.net;
 Sat, 23 Aug 2025 03:10:15 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 401F014000BE;
 Fri, 22 Aug 2025 23:10:04 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Fri, 22 Aug 2025 23:10:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1755918604; x=
 1756005004; bh=8Aeil4IxTwnNb4l2xQs001wJqzMLlOVlrN2kqxgWY4Y=; b=W
 dqF83WYSquIoG+n5SP8MGMNA4v9DfAZXoQy+3JQhiB02v6TtRMmFgcHSAhn2orl1
 K6fV3wEbKTjzuCIoEXoVVKOF8FUrnAaKEAiaBtNUktbjfzMjSdTWJ0O6o2wMxcrB
 OHIFinagmanlPK1En+VxnoNiMeIhGzWXRGxv+5UhaMzmfgTJL7KW/X0wxB9M7Kzl
 fMGwZt1+zBSaLOFw+a4XmIoqUWakixrj3qVdFkAcl+lmhn7GiOqQyWggA3Qx+7Q3
 sYM4ZkEIbXb1fqE2KBW4OlrigxWhuTDPB0fdb6JV9vbE1/EVhvXB/SQXJZXPkudd
 lGp6J2MJGn1h7hrjWUdZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1755918604; x=1756005004; bh=8
 Aeil4IxTwnNb4l2xQs001wJqzMLlOVlrN2kqxgWY4Y=; b=gPGwl4TyvkGP9VpD4
 9KVq3GQM5nEyG1TEierybuAzlBtD+y+BFDFw3SdzZDNWN3Dn+75ajGJq5kiNa/3B
 zZWPIE3j59Bg7SGm4IhYNt7jv0x5cDWDDGxoGTgcy1XGQNuo+2qoC1x9cW2Ez8th
 ub9UznE3qQHfRHiTl5vpk3LUtMPyPH2SoFc2SfVpR71Du5soj84D9jRfI5n9T8SF
 Bc4sDfEAA1as7MOf+GRymVr5GtTGXUvIhkN1/0vs/d/W8TvLKYPVsfkS8FDgjbgs
 XHyte6IRJPk+Ml2epPHd7kpqnbUtsKc+Ia7MX/qSlPkgW9axTunChF8kDLzUwR/T
 OPr5g==
X-ME-Sender: <xms:DDGpaAJV34PY6M-9EThmx6oxYmy9YMa_g1UILqbyXfIVBv4FmyvW9Q>
 <xme:DDGpaJF7FdCOZwsmb8Kk7-IAANveK3MNiQ8tsqUL_smiHjmdCOLqyyBXNI4077Dcf
 UzdoAkFm43BKirtnrg>
X-ME-Received: <xmr:DDGpaCrObSuSzFfXcT2qJNN5Y7pNbGuF7KgcZN21ut54Jx5EQT08x80ccsFVP9V1TvH0AYHZZaIMElUoxZ4vnBqD_W2Luaiv8-2jE1KMWZ9JUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduieehheduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:DDGpaKQ2R3szyrhFD8ec6mKkdyKXJfJNxhPeoNEyPOi3haowVEzIOA>
 <xmx:DDGpaHOTa8HIYtxDv2EZg23jw-g0Owi5aNK-BMMwMHYl5YwrnmD_CQ>
 <xmx:DDGpaFMiyd0CsoEFmUNozlkPd0jeDcDpRyQjouqoGfVKTJE9eIyFlw>
 <xmx:DDGpaPuyyKr2I1x7B8ILGp0HAAXuMpBosYNbJFSjAFIA5wFV0mcjdg>
 <xmx:DDGpaMMlm4V5Q_AEDbP8TECATIYcVd5_2gr7SQp7cWsrf-JDHsAVoQeo>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 Aug 2025 23:10:02 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/3] firewire: ohci: remove module-local workqueue
Date: Sat, 23 Aug 2025 12:09:54 +0900
Message-ID: <20250823030954.268412-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
References: <20250823030954.268412-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Now module-local workqueue has been replaced by a threaded
 IRQ handler. This commit removes the workqueue and the associated work item
 accordingly. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/ohci.c | 11 1 file changed, 11 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1upedy-0004UQ-P9
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Now module-local workqueue has been replaced by a threaded IRQ handler.

This commit removes the workqueue and the associated work item
accordingly.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 5b16286280e0..40851b120615 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -228,13 +228,10 @@ struct fw_ohci {
 
 	__le32    *self_id;
 	dma_addr_t self_id_bus;
-	struct work_struct bus_reset_work;
 
 	u32 self_id_buffer[512];
 };
 
-static struct workqueue_struct *selfid_workqueue;
-
 static inline struct fw_ohci *fw_ohci(struct fw_card *card)
 {
 	return container_of(card, struct fw_ohci, card);
@@ -3512,8 +3509,6 @@ static int pci_probe(struct pci_dev *dev,
 	spin_lock_init(&ohci->lock);
 	mutex_init(&ohci->phy_reg_mutex);
 
-	INIT_WORK(&ohci->bus_reset_work, bus_reset_work);
-
 	if (!(pci_resource_flags(dev, 0) & IORESOURCE_MEM) ||
 	    pci_resource_len(dev, 0) < OHCI1394_REGISTER_SIZE) {
 		ohci_err(ohci, "invalid MMIO resource\n");
@@ -3668,7 +3663,6 @@ static void pci_remove(struct pci_dev *dev)
 		reg_write(ohci, OHCI1394_IntMaskClear, ~0);
 		flush_writes(ohci);
 	}
-	cancel_work_sync(&ohci->bus_reset_work);
 	fw_core_remove_card(&ohci->card);
 
 	/*
@@ -3741,17 +3735,12 @@ static struct pci_driver fw_ohci_pci_driver = {
 
 static int __init fw_ohci_init(void)
 {
-	selfid_workqueue = alloc_workqueue(KBUILD_MODNAME, WQ_MEM_RECLAIM, 0);
-	if (!selfid_workqueue)
-		return -ENOMEM;
-
 	return pci_register_driver(&fw_ohci_pci_driver);
 }
 
 static void __exit fw_ohci_cleanup(void)
 {
 	pci_unregister_driver(&fw_ohci_pci_driver);
-	destroy_workqueue(selfid_workqueue);
 }
 
 module_init(fw_ohci_init);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
