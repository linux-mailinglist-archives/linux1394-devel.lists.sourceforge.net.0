Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7C07214EC
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Jun 2023 07:45:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q5gYC-0006Lg-5s;
	Sun, 04 Jun 2023 05:45:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q5gYB-0006LY-CZ
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JB7K4eidj7H1KpxfnC6amlDwCbgE0URtV74lvVmVyE0=; b=BcKxbXoro8XZ0IaHzWxykoJo9f
 3R+ein2J1waugCg2OgWFu4DGDf45GNVU7RbJDm3M1TGqI4MIZJ7mA7VPfejlDl5F4jWc7+YYX4VVv
 VlL111Ha16Et6nmv9V9BOcdmN+PSjHTDIkDbyCoBIhTpXR7Go0FYXNBWQpUBJMQYjKPs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JB7K4eidj7H1KpxfnC6amlDwCbgE0URtV74lvVmVyE0=; b=IvEccyhvHa1bQu9xLyIsY/bStR
 yCBGQkWAqjW2y+Dh4f2Dg5RSXp616yJ7I82zP6OmqkLhjbTdi/NaGp2ucICJdAc8QWQLZM2KAolxQ
 KCcqbZ4nC/V4qTeeABvBDV/X1sV58JM7F+WfATdVB9NyCtzmD6/Mt4Sv/6cEnty/TNNA=;
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q5gY5-00031K-Uf for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Jun 2023 05:45:11 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id E90245C0108;
 Sun,  4 Jun 2023 01:44:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sun, 04 Jun 2023 01:44:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; t=1685857497; x=
 1685943897; bh=JB7K4eidj7H1KpxfnC6amlDwCbgE0URtV74lvVmVyE0=; b=Q
 kP7H19xJnIgyVj44WdEVh/W48SS/7U4wOy13xD+fw0ipdjZ3Lm44pZK4ZwrSiJQA
 b6VEyBL9JYFKwNXtOpmpSzEXcFjadgBtOcZTON7R8noC3eMQsYXYnzAa9SijWiDQ
 GujbnoyreZLoBKxS0B/UejA2fIQn3Td48PZf1dTLvsS64G+wB9pnC5jWw1gb/OL7
 29W4zvSEC3rMf4DNa8TEevjHvOyauK4HYcNbVQaD3/Dex8dHA3S9eDtI0ySGBqSJ
 ZC0DYgZRBK6j/LMCqIIjF5brQsEEiCFORjZaN1fr8xjgh22rBlgtlaBc9srvu6As
 gZEOzyZR2Kn9Bdi40M40A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1685857497; x=1685943897; bh=J
 B7K4eidj7H1KpxfnC6amlDwCbgE0URtV74lvVmVyE0=; b=m507attTArW1hSN37
 3IFOIT2dhJH/7ohUHGHeD1KsxgIlBbKiEmAukzITKhmgIeJBYxkvhNm25RwEYjXu
 5ogvxAvVJfXiy1wRNZeu3WC3g3Nvt11G4i8+nZVjQ+cn6gJvMaJ8nf1/Y9vOqkBN
 kuhg7EqpbglPeccNeW1aj+2gWaSW69ZL5phn4cxQspx1pX17U6E1dr856DAl/+SC
 +HZExs++6ocflj5nkSOoePrKZedzosr4115dZ3XKrkXdGLyTAiCLve4m7vSmNSAr
 rp+oWEgEzqIfSZVMkKaohYp9mP3WvNQN/w/ts73g6j4QIs5LT4g+piZku499Ne0w
 Hhgwg==
X-ME-Sender: <xms:2SR8ZFTzu2ii0RxPfkVkQH3Mjh4UvNaAzvpw2ID4tzpo6BJy3RHxYA>
 <xme:2SR8ZOwuCuYkeozkGXnUmQgHDKz0_enHyCsJCuHFRxb4ON4uGa7GREuvJa36utl3h
 9_jCQ_aNh6vqOSqdms>
X-ME-Received: <xmr:2SR8ZK1abvlwMYwZOoZQLIrFO1n8T2s1wYecCJQd56r2HmIygv9hH_zHnE_t_95M4u16NtOyWQkR5pFDo0yFQPygnPpfurx-YULemvsPUZg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeliedguddtudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevfefffe
 ektefgveegfeelheffhfeujedtjeevtefhkeevkedtjeejvddtjefhjeenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:2SR8ZNB10zvpIP60zGZxQGJrXbCaADwOJWXiH0781Ycq7LnIIi_yQw>
 <xmx:2SR8ZOjN5awH1OLhiXk7XYWbiKJw-eWT2kwZn4M42P_b_UW0yjWN0g>
 <xmx:2SR8ZBq4nZe9KM8pTbd6XEBWGXmoQsk9Oqe7uuSZB4_M3nAn94AkvQ>
 <xmx:2SR8ZGJA2WfHvYozHMmyxw7iOGlJIlGrc7Tpf6-5caTjCsnJkWsRyA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Jun 2023 01:44:56 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/9] firewire: ohci: use devres for memory object of ohci
 structure
Date: Sun,  4 Jun 2023 14:44:43 +0900
Message-Id: <20230604054451.161076-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
References: <20230604054451.161076-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The managed device resource (devres) framework is convenient
 to maintain lifetime of allocated memory object for device. This commit
 utilizes
 the framework for the object of ohci structure. The extra operation for power
 management is required in Apple PowerMac based machines, thus release callback
 is assigned to the obj [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q5gY5-00031K-Uf
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

The managed device resource (devres) framework is convenient to maintain
lifetime of allocated memory object for device.

This commit utilizes the framework for the object of ohci structure. The
extra operation for power management is required in Apple PowerMac based
machines, thus release callback is assigned to the object to call the
operation.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 33 +++++++++++++++++----------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 06386c3b7f03..2b02cebcb0ae 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -3557,6 +3557,15 @@ static inline void pmac_ohci_on(struct pci_dev *dev) {}
 static inline void pmac_ohci_off(struct pci_dev *dev) {}
 #endif /* CONFIG_PPC_PMAC */
 
+static void release_ohci(struct device *dev, void *data)
+{
+	struct pci_dev *pdev = to_pci_dev(dev);
+
+	pmac_ohci_off(pdev);
+
+	dev_notice(dev, "removed fw-ohci device\n");
+}
+
 static int pci_probe(struct pci_dev *dev,
 			       const struct pci_device_id *ent)
 {
@@ -3571,25 +3580,22 @@ static int pci_probe(struct pci_dev *dev,
 		return -ENOSYS;
 	}
 
-	ohci = kzalloc(sizeof(*ohci), GFP_KERNEL);
-	if (ohci == NULL) {
-		err = -ENOMEM;
-		goto fail;
-	}
-
+	ohci = devres_alloc(release_ohci, sizeof(*ohci), GFP_KERNEL);
+	if (ohci == NULL)
+		return -ENOMEM;
 	fw_card_initialize(&ohci->card, &ohci_driver, &dev->dev);
-
+	pci_set_drvdata(dev, ohci);
 	pmac_ohci_on(dev);
+	devres_add(&dev->dev, ohci);
 
 	err = pci_enable_device(dev);
 	if (err) {
 		dev_err(&dev->dev, "failed to enable OHCI hardware\n");
-		goto fail_free;
+		return err;
 	}
 
 	pci_set_master(dev);
 	pci_write_config_dword(dev, OHCI1394_PCI_HCI_Control, 0);
-	pci_set_drvdata(dev, ohci);
 
 	spin_lock_init(&ohci->lock);
 	mutex_init(&ohci->phy_reg_mutex);
@@ -3748,10 +3754,7 @@ static int pci_probe(struct pci_dev *dev,
 	pci_release_region(dev, 0);
  fail_disable:
 	pci_disable_device(dev);
- fail_free:
-	kfree(ohci);
-	pmac_ohci_off(dev);
- fail:
+
 	return err;
 }
 
@@ -3796,10 +3799,8 @@ static void pci_remove(struct pci_dev *dev)
 	pci_iounmap(dev, ohci->registers);
 	pci_release_region(dev, 0);
 	pci_disable_device(dev);
-	kfree(ohci);
-	pmac_ohci_off(dev);
 
-	dev_notice(&dev->dev, "removed fw-ohci device\n");
+	dev_notice(&dev->dev, "removing fw-ohci device\n");
 }
 
 #ifdef CONFIG_PM
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
