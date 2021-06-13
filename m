Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 566D53A58B3
	for <lists+linux1394-devel@lfdr.de>; Sun, 13 Jun 2021 15:28:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lsQ9v-00022D-5v; Sun, 13 Jun 2021 13:28:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1lsQ9f-00021b-2p
 for linux1394-devel@lists.sourceforge.net; Sun, 13 Jun 2021 13:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4TQKvFMKKZ36yq8UHavqiQfLVX3FuJvSXpM2z3BM5r4=; b=YpyC1Wela7JM6SHFrBwNIvg8tL
 j5fVGzs7Pgfd4gUsk9FJUixuhtFUre/IVS46Q0YMqycjfpesQTG+fDBwg2wdjyfZEj1b/rsUjmn8z
 vyQPwvCFiuRLpOKnKsGu9XNTGIMuFm02mhZK36muUs51ALg11h3Hyj+u56w4VurVkaT8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4TQKvFMKKZ36yq8UHavqiQfLVX3FuJvSXpM2z3BM5r4=; b=Z
 wd9Es2aQloWqqPsaA78icCg+KJ7tWU+0eGgzFKIr8mnFpe3so+K3jiGOn07W39nBHD3hHgYZr2r97
 OwILEHbhRaFT7leYCld/qkBg0+SdIQJTnQWTW9/J1fdOznUBHJbtaAe9Ou2txg2wLs+VWB5ts2gX2
 0NQMKB9m7ZTHHtjo=;
Received: from smtp08.smtpout.orange.fr ([80.12.242.130]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.3) id 1lsQ9b-007cFu-1r
 for linux1394-devel@lists.sourceforge.net; Sun, 13 Jun 2021 13:28:00 +0000
Received: from localhost.localdomain ([86.243.172.93]) by mwinf5d31 with ME
 id GdTk2500721Fzsu03dTlg6; Sun, 13 Jun 2021 15:27:46 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 13 Jun 2021 15:27:46 +0200
X-ME-IP: 86.243.172.93
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: stefanr@s5r6.in-berlin.de,
	greg@kroah.com
Subject: [PATCH] firewire: nosy: switch from 'pci_' to 'dma_' API
Date: Sun, 13 Jun 2021 15:27:43 +0200
Message-Id: <e1d7fa558f31abf294659a9d4edcc1e4fc065fab.1623590706.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marc.info]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.130 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lsQ9b-007cFu-1r
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

The wrappers in include/linux/pci-dma-compat.h should go away.

The patch has been generated with the coccinelle script below and has been
hand modified to replace GFP_ with a correct flag.
It has been compile tested.

When memory is allocated in 'add_card()', GFP_KERNEL can be used because
this flag is already used a few lines above and no lock is taken in the
between.

While at it, also remove some useless casting.

@@ @@
-    PCI_DMA_BIDIRECTIONAL
+    DMA_BIDIRECTIONAL

@@ @@
-    PCI_DMA_TODEVICE
+    DMA_TO_DEVICE

@@ @@
-    PCI_DMA_FROMDEVICE
+    DMA_FROM_DEVICE

@@ @@
-    PCI_DMA_NONE
+    DMA_NONE

@@
expression e1, e2, e3;
@@
-    pci_alloc_consistent(e1, e2, e3)
+    dma_alloc_coherent(&e1->dev, e2, e3, GFP_)

@@
expression e1, e2, e3;
@@
-    pci_zalloc_consistent(e1, e2, e3)
+    dma_alloc_coherent(&e1->dev, e2, e3, GFP_)

@@
expression e1, e2, e3, e4;
@@
-    pci_free_consistent(e1, e2, e3, e4)
+    dma_free_coherent(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4;
@@
-    pci_map_single(e1, e2, e3, e4)
+    dma_map_single(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4;
@@
-    pci_unmap_single(e1, e2, e3, e4)
+    dma_unmap_single(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4, e5;
@@
-    pci_map_page(e1, e2, e3, e4, e5)
+    dma_map_page(&e1->dev, e2, e3, e4, e5)

@@
expression e1, e2, e3, e4;
@@
-    pci_unmap_page(e1, e2, e3, e4)
+    dma_unmap_page(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4;
@@
-    pci_map_sg(e1, e2, e3, e4)
+    dma_map_sg(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4;
@@
-    pci_unmap_sg(e1, e2, e3, e4)
+    dma_unmap_sg(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4;
@@
-    pci_dma_sync_single_for_cpu(e1, e2, e3, e4)
+    dma_sync_single_for_cpu(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4;
@@
-    pci_dma_sync_single_for_device(e1, e2, e3, e4)
+    dma_sync_single_for_device(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4;
@@
-    pci_dma_sync_sg_for_cpu(e1, e2, e3, e4)
+    dma_sync_sg_for_cpu(&e1->dev, e2, e3, e4)

@@
expression e1, e2, e3, e4;
@@
-    pci_dma_sync_sg_for_device(e1, e2, e3, e4)
+    dma_sync_sg_for_device(&e1->dev, e2, e3, e4)

@@
expression e1, e2;
@@
-    pci_dma_mapping_error(e1, e2)
+    dma_mapping_error(&e1->dev, e2)

@@
expression e1, e2;
@@
-    pci_set_dma_mask(e1, e2)
+    dma_set_mask(&e1->dev, e2)

@@
expression e1, e2;
@@
-    pci_set_consistent_dma_mask(e1, e2)
+    dma_set_coherent_mask(&e1->dev, e2)

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
If needed, see post from Christoph Hellwig on the kernel-janitors ML:
   https://marc.info/?l=kernel-janitors&m=158745678307186&w=4
---
 drivers/firewire/nosy.c | 43 +++++++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/drivers/firewire/nosy.c b/drivers/firewire/nosy.c
index 88ed971e32c0..b0d671db178a 100644
--- a/drivers/firewire/nosy.c
+++ b/drivers/firewire/nosy.c
@@ -511,12 +511,12 @@ remove_card(struct pci_dev *dev)
 		wake_up_interruptible(&client->buffer.wait);
 	spin_unlock_irq(&lynx->client_list_lock);
 
-	pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
-			    lynx->rcv_start_pcl, lynx->rcv_start_pcl_bus);
-	pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
-			    lynx->rcv_pcl, lynx->rcv_pcl_bus);
-	pci_free_consistent(lynx->pci_device, PAGE_SIZE,
-			    lynx->rcv_buffer, lynx->rcv_buffer_bus);
+	dma_free_coherent(&lynx->pci_device->dev, sizeof(struct pcl),
+			  lynx->rcv_start_pcl, lynx->rcv_start_pcl_bus);
+	dma_free_coherent(&lynx->pci_device->dev, sizeof(struct pcl),
+			  lynx->rcv_pcl, lynx->rcv_pcl_bus);
+	dma_free_coherent(&lynx->pci_device->dev, PAGE_SIZE, lynx->rcv_buffer,
+			  lynx->rcv_buffer_bus);
 
 	iounmap(lynx->registers);
 	pci_disable_device(dev);
@@ -532,7 +532,7 @@ add_card(struct pci_dev *dev, const struct pci_device_id *unused)
 	u32 p, end;
 	int ret, i;
 
-	if (pci_set_dma_mask(dev, DMA_BIT_MASK(32))) {
+	if (dma_set_mask(&dev->dev, DMA_BIT_MASK(32))) {
 		dev_err(&dev->dev,
 		    "DMA address limits not supported for PCILynx hardware\n");
 		return -ENXIO;
@@ -564,12 +564,16 @@ add_card(struct pci_dev *dev, const struct pci_device_id *unused)
 		goto fail_deallocate_lynx;
 	}
 
-	lynx->rcv_start_pcl = pci_alloc_consistent(lynx->pci_device,
-				sizeof(struct pcl), &lynx->rcv_start_pcl_bus);
-	lynx->rcv_pcl = pci_alloc_consistent(lynx->pci_device,
-				sizeof(struct pcl), &lynx->rcv_pcl_bus);
-	lynx->rcv_buffer = pci_alloc_consistent(lynx->pci_device,
-				RCV_BUFFER_SIZE, &lynx->rcv_buffer_bus);
+	lynx->rcv_start_pcl = dma_alloc_coherent(&lynx->pci_device->dev,
+						 sizeof(struct pcl),
+						 &lynx->rcv_start_pcl_bus,
+						 GFP_KERNEL);
+	lynx->rcv_pcl = dma_alloc_coherent(&lynx->pci_device->dev,
+					   sizeof(struct pcl),
+					   &lynx->rcv_pcl_bus, GFP_KERNEL);
+	lynx->rcv_buffer = dma_alloc_coherent(&lynx->pci_device->dev,
+					      RCV_BUFFER_SIZE,
+					      &lynx->rcv_buffer_bus, GFP_KERNEL);
 	if (lynx->rcv_start_pcl == NULL ||
 	    lynx->rcv_pcl == NULL ||
 	    lynx->rcv_buffer == NULL) {
@@ -667,14 +671,15 @@ add_card(struct pci_dev *dev, const struct pci_device_id *unused)
 
 fail_deallocate_buffers:
 	if (lynx->rcv_start_pcl)
-		pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
-				lynx->rcv_start_pcl, lynx->rcv_start_pcl_bus);
+		dma_free_coherent(&lynx->pci_device->dev, sizeof(struct pcl),
+				  lynx->rcv_start_pcl,
+				  lynx->rcv_start_pcl_bus);
 	if (lynx->rcv_pcl)
-		pci_free_consistent(lynx->pci_device, sizeof(struct pcl),
-				lynx->rcv_pcl, lynx->rcv_pcl_bus);
+		dma_free_coherent(&lynx->pci_device->dev, sizeof(struct pcl),
+				  lynx->rcv_pcl, lynx->rcv_pcl_bus);
 	if (lynx->rcv_buffer)
-		pci_free_consistent(lynx->pci_device, PAGE_SIZE,
-				lynx->rcv_buffer, lynx->rcv_buffer_bus);
+		dma_free_coherent(&lynx->pci_device->dev, PAGE_SIZE,
+				  lynx->rcv_buffer, lynx->rcv_buffer_bus);
 	iounmap(lynx->registers);
 
 fail_deallocate_lynx:
-- 
2.30.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
