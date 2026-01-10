Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD424D0CBB5
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M2K/80I/lbF429yq1+joAaUBMcl600Mb4Qqfoaethkw=; b=K3QuiWqWfX2XE0x/Z1bEi2b6pT
	IM4VNIMr20cb92QZVVgGzbU2mAsV9stkrXyD0j2mwJxrfhtgxvk75lBHMwdz1AwAci+7+tV0ZlBcr
	cBvFyNcYash2w3JNtPYWz/VHib1WuWr/gOQDOZkAZK45LqB5VHVhev1M6znJRWj+/4oc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNwq-0007d2-35;
	Sat, 10 Jan 2026 01:39:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNwp-0007ct-5M
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bgkZrJie3U4WbN7TceY0STDRrtzjsYUXJEYO4Gsh+BM=; b=WUft/GuNeWVH3N31+WGY5HiFKP
 4aGJZYe5ByL9FKnXuVMkhsDmKFNklVhSu0VPsm9HMzgYLjShMChdtF5A2RuRcsxZUv4RyJ3Y6TO9G
 Vq6oi07FoTq/PBc7sTY7s0YVVJGsUP955odgNRqavQwotWev0+8eOM4YBByzQtBG93JA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bgkZrJie3U4WbN7TceY0STDRrtzjsYUXJEYO4Gsh+BM=; b=hCSKGJvkZ4YsvWerBnn7L/seIG
 HF03ilC+1dvZX+Y1hJSyQd+QQsEe0DI9EOk7vtyTGQkBdhr/EAsZXBQGlFsVMlGlRG0KuSfkUr3lC
 V6QD5O5yI7jOevmE+fkv35NuZ4Zhbpb3vc2XZ3+K/Er8zmONXsvYIrvgV3knSm9y72Vg=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNwp-0000fG-CK for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:23 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.phl.internal (Postfix) with ESMTP id CF868EC0129;
 Fri,  9 Jan 2026 20:39:17 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Fri, 09 Jan 2026 20:39:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768009157; x=
 1768095557; bh=bgkZrJie3U4WbN7TceY0STDRrtzjsYUXJEYO4Gsh+BM=; b=e
 tsWmFQoz+XriFWomAAAf0Dc0w47MIwLofnUqktEz7cjZpVG2vSiyNPFctLLrUXPl
 Z3sm0wHzofEIXZN/eCM0+VkU9j5+ixbWP0hLq+0FbOqq3Mn7tpaI7vhi5SwDTMMn
 q4gNcCRmShSTiWfq5KaSPQBx1Yk2t54fInzsxMOOKoFuLO7fiR1EH24Inz+oXn5N
 5dK5i0kBhlzjTKLB/gaLb331LTV2mwfytctDZShwcwoRa1i09O9Ww+lm40PvqgsG
 sED92t+mzDBQEjicFF2NgVbXs3RTNO2zqqPcq9oAFCxIb2thbzwC1JnpBYaL56P/
 k7Q0YG52yWN/oyeHK/llQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768009157; x=1768095557; bh=b
 gkZrJie3U4WbN7TceY0STDRrtzjsYUXJEYO4Gsh+BM=; b=M+JabEGmT3ucfjEyp
 TLlwMMYViq7IzrPGWeIKmxI4r2tDEqWNX3tKB69qqQg6a/uM+32Rz8xMoReXUzxt
 gHIkWb9ZnOeTIx8/iqJoMrSbNxMYOQEqdgzSVVnk9fT428hl+0sUCYAoFZ5AVCOJ
 Lyz7bGx18V+vfUROdnTUYdf9xonRMx3Gdz15WiK5y1aNnIewQthUhIt90Pk9W3X3
 2+/h5OmvnsgwPYcXCIe2Yo6s6o7pZSBBXUc23WapLvaTau8qW4E75hu+BSblDW0A
 di0cQdj97m1pou3guLuHPp6wYAgC52eBBAMmcAre2NDhhg6+a/xOQjyIkAFg7Jl8
 cppyA==
X-ME-Sender: <xms:xa1hab-F6jBW9Ow_dH6hgPweXiWFCbNQpLw2RvFp4IJOQDwGFb1Dvw>
 <xme:xa1hafcP415SPi4SXZb2raHVe5cLho1TTzpHDoGyKHddZNBdhRSrx-7Br6CI1AXQ7
 BOwJygjH6dLNb59pOy4ZeuYeS4aooEywihJSW3lUaL8-uSgyW6nb0o>
X-ME-Received: <xmr:xa1hacExG7uY5lUfG2CLCB5CO0LgZrGgYK9OpYpBTrIqR0t8Gneq2Oq0nBnFPb4nton6PaHw4l-h6uTr4BVc0zAIKvDuvYug3flF07EjqZYP>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduuddtfeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:xa1haVcWxV_wsEe0JaJN94-mZsyWGZs1y_osUt3obIHEaKORNYxPYA>
 <xmx:xa1haeG2A1EEicMYr6SLh8YlZsYmLeWQYAcJiMGPYDGMzdsoP5upQw>
 <xmx:xa1haWXEfe1bhqAGWgbV6CAuDZujgOkl-pDlAqRFe7EWZmXCsdGf6Q>
 <xmx:xa1hadJqBS5AQ01RcoAr3a1KZp3Os50C-AvjrYFay7uqqrXj2OaNjQ>
 <xmx:xa1hadKHygSwTLes41VekPteIQc1YECqLiXxbj1ILjKNmdsaJqT7EnBe>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:16 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/8] firewire: core: use mutex instead of spinlock for client
 isochronous context
Date: Sat, 10 Jan 2026 10:39:05 +0900
Message-ID: <20260110013911.19160-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
References: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is a restriction that the userspace client associated
 to a file descriptor can hold one isochronous context. The client-level
 spinning
 lock is used to guarantee it, however the lock is also used [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.149 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1veNwp-0000fG-CK
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
Cc: linux-kernel@vger.kernel.org, jgg@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

There is a restriction that the userspace client associated to a file
descriptor can hold one isochronous context. The client-level spinning
lock is used to guarantee it, however the lock is also used for
multi-purposes. Additionally, there is no need to use this type of lock,
and the mutex is available, instead.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 40 +++++++++++++++++++++---------------
 1 file changed, 23 insertions(+), 17 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 49dc1612c691..2b8a878c8aae 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -63,6 +63,7 @@ struct client {
 	u64 bus_reset_closure;
 
 	struct fw_iso_context *iso_context;
+	struct mutex iso_context_mutex;
 	u64 iso_closure;
 	struct fw_iso_buffer buffer;
 	unsigned long vm_start;
@@ -306,6 +307,7 @@ static int fw_device_op_open(struct inode *inode, struct file *file)
 	INIT_LIST_HEAD(&client->phy_receiver_link);
 	INIT_LIST_HEAD(&client->link);
 	kref_init(&client->kref);
+	mutex_init(&client->iso_context_mutex);
 
 	file->private_data = client;
 
@@ -1088,26 +1090,27 @@ static int ioctl_create_iso_context(struct client *client, union ioctl_arg *arg)
 		context->drop_overflow_headers = true;
 
 	// We only support one context at this time.
-	guard(spinlock_irq)(&client->lock);
-
-	if (client->iso_context != NULL) {
-		fw_iso_context_destroy(context);
-
-		return -EBUSY;
-	}
-	if (!client->buffer_is_mapped) {
-		ret = fw_iso_buffer_map_dma(&client->buffer,
-					    client->device->card,
-					    iso_dma_direction(context));
-		if (ret < 0) {
+	scoped_guard(mutex, &client->iso_context_mutex) {
+		if (client->iso_context != NULL) {
 			fw_iso_context_destroy(context);
 
-			return ret;
+			return -EBUSY;
 		}
-		client->buffer_is_mapped = true;
+		// The DMA mapping operation is available if the buffer is already allocated by
+		// mmap(2) system call. If not, it is delegated to the system call.
+		if (!client->buffer_is_mapped) {
+			ret = fw_iso_buffer_map_dma(&client->buffer, client->device->card,
+						    iso_dma_direction(context));
+			if (ret < 0) {
+				fw_iso_context_destroy(context);
+
+				return ret;
+			}
+			client->buffer_is_mapped = true;
+		}
+		client->iso_closure = a->closure;
+		client->iso_context = context;
 	}
-	client->iso_closure = a->closure;
-	client->iso_context = context;
 
 	a->handle = 0;
 
@@ -1826,7 +1829,9 @@ static int fw_device_op_mmap(struct file *file, struct vm_area_struct *vma)
 	if (ret < 0)
 		return ret;
 
-	scoped_guard(spinlock_irq, &client->lock) {
+	scoped_guard(mutex, &client->iso_context_mutex) {
+		// The direction of DMA can be determined if the isochronous context is already
+		// allocated. If not, the DMA mapping operation is postponed after the allocation.
 		if (client->iso_context) {
 			ret = fw_iso_buffer_map_dma(&client->buffer, client->device->card,
 						    iso_dma_direction(client->iso_context));
@@ -1879,6 +1884,7 @@ static int fw_device_op_release(struct inode *inode, struct file *file)
 
 	if (client->iso_context)
 		fw_iso_context_destroy(client->iso_context);
+	mutex_destroy(&client->iso_context_mutex);
 
 	if (client->buffer.pages)
 		fw_iso_buffer_destroy(&client->buffer, client->device->card);
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
