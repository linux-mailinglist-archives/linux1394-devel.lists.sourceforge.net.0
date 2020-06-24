Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0634E207C1D
	for <lists+linux1394-devel@lfdr.de>; Wed, 24 Jun 2020 21:24:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1joAzv-0005TZ-I3; Wed, 24 Jun 2020 19:23:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1joAzt-0005TS-71
 for linux1394-devel@lists.sourceforge.net; Wed, 24 Jun 2020 19:23:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Rfn9udvt8nnerJGkrXJ8Nfvutv8kiF9JDM4lof+6aA=; b=ZivS5X9NPVDyDoDVFCVStOB09R
 RwIil/Fvoe6qHlMAH0kSx3zxUTKu2jqrZxuxsA2B1TeUvLLNPZI9cpe/pMLFOCqs39v79aPZ78Wwj
 kb8+tck7TW2ZKlmdgaJMZT6TmaTvIPbAwsh35U/axKKbBaReQNTMMP6VSnW4dIuhLUHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2Rfn9udvt8nnerJGkrXJ8Nfvutv8kiF9JDM4lof+6aA=; b=l
 QdBsCvSQ3wgsrCT4WqZV5vkOYrBkzIRKNxdbigp1F1GaxAvPHKBGPQj7L7b48SwkzeK5IbFfNjjVy
 J5fAbBl/dbgAhheMn3nuEOXijJme4KjST5MCtgt7V2kK2JnKuk9oZwLPkBqkvFI2pRvliXkCWswA9
 ouz0ZSr6l4+F+dL4=;
Received: from smtp11.smtpout.orange.fr ([80.12.242.133]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.2) id 1joAzq-00GwgX-5a
 for linux1394-devel@lists.sourceforge.net; Wed, 24 Jun 2020 19:23:48 +0000
Received: from localhost.localdomain ([93.23.13.252]) by mwinf5d46 with ME
 id v7PU2200J5SHPSM037PVh4; Wed, 24 Jun 2020 21:23:37 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 24 Jun 2020 21:23:37 +0200
X-ME-IP: 93.23.13.252
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: stefanr@s5r6.in-berlin.de,
	krh@bitplanet.net,
	hch@infradead.org
Subject: [PATCH] firewire: nosy: Fix the amount of memory deallocated by some
 'pci_free_consistent' calls
Date: Wed, 24 Jun 2020 21:23:25 +0200
Message-Id: <20200624192325.940280-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.133 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1joAzq-00GwgX-5a
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux1394-devel@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

'lynx->pci_device' is allocated with a size of RCV_BUFFER_SIZE. This is to
say (16 * 1024).

Pass the same size when it is freed.

Fixes: 286468210d83 ("firewire: new driver: nosy - IEEE 1394 traffic sniffer")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/firewire/nosy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
index 5fd6a60b6741..445c37f5251d 100644
--- a/drivers/firewire/nosy.c
+++ b/drivers/firewire/nosy.c
@@ -510,7 +510,7 @@ remove_card(struct pci_dev *dev)
 			    lynx->rcv_start_pcl, lynx->rcv_start_pcl_bus);
 	pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
 			    lynx->rcv_pcl, lynx->rcv_pcl_bus);
-	pci_free_consistent(lynx->pci_device, PAGE_SIZE,
+	pci_free_consistent(lynx->pci_device, RCV_BUFFER_SIZE,
 			    lynx->rcv_buffer, lynx->rcv_buffer_bus);
 
 	iounmap(lynx->registers);
@@ -668,7 +668,7 @@ add_card(struct pci_dev *dev, const struct pci_device_id *unused)
 		pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
 				lynx->rcv_pcl, lynx->rcv_pcl_bus);
 	if (lynx->rcv_buffer)
-		pci_free_consistent(lynx->pci_device, PAGE_SIZE,
+		pci_free_consistent(lynx->pci_device, RCV_BUFFER_SIZE,
 				lynx->rcv_buffer, lynx->rcv_buffer_bus);
 	iounmap(lynx->registers);
 
-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
