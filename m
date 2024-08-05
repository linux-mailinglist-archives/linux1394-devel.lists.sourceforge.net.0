Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9764294779D
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUB-0006zC-22;
	Mon, 05 Aug 2024 08:54:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satU8-0006ye-10
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZl0F95VKdVRmO/VEzrXjIFDoXhwf1ZOuWhytnJzBf0=; b=LBXluIBfJg7b7rJJDqJoyTwbNz
 RHWklhwZJWRzvMhkS4CB35nJNjKpVLLfvq99vdCvVY41LNOXTP7KNFgip8/GjIJzs6XdhqU783/jq
 PLyNGtFIoPG10vClnUjiB3G4KKDTT8HmIelocWKTlhdlil1tQVgkVCjXw06Wpl5cLnyk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GZl0F95VKdVRmO/VEzrXjIFDoXhwf1ZOuWhytnJzBf0=; b=j+z/LtMB3CAV+GOzNv9jVtg9+t
 oqcKSQsMBy9oLTPX+pJnfwpWNbGpKr+hE0bgTSOTJrG4ixA/Z5NKU5k4k2mHoPOCw7rjPjMQwqPi/
 mnxvtQFQeFVqM3FX2U4Eg3TiHP4sEOL1KGTNjpyrqUFSWbRlyFZCx2/S9XfpOVJIoQ5M=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satU6-0002qJ-Ju for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:31 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 0E4A91151C99;
 Mon,  5 Aug 2024 04:54:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 05 Aug 2024 04:54:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848060; x=
 1722934460; bh=GZl0F95VKdVRmO/VEzrXjIFDoXhwf1ZOuWhytnJzBf0=; b=Q
 ESFpjO1WMJ0IxA5WS8kFEFDst+Ncf5cw8lvUXDSYCh1J3QvrMWwZq7yQwn1TE3w7
 ZdAmPLVbzJKdYoSqbAAygDmgMzmWVmGLyTjvevzwv4PgC+Ei7pUypHLmytIs9r3V
 mt34v0iJLYzXUgRWcZjaCHFNJ3TJA44fKkeYIkn+Eo4G6V4qPfvCpJfvFtap+J1u
 XTtTFWkTnvOUtl+6JFz6b98NzRhErQlRjUBO7xT5CeR3adwyIPdCcq1IzGn63hZk
 r8dLfHevTg3s5eAvBREbJGM1T0yQ54IAwV9Thv41ILybNKn0MuwH7u4IhLXwvQk2
 9ApLvjziqZDMs6eTfEptA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848060; x=
 1722934460; bh=GZl0F95VKdVRmO/VEzrXjIFDoXhwf1ZOuWhytnJzBf0=; b=s
 yntl4K6algimwx9gUV+Jpik9rGMqO2QWAbxfeBcn53OCOG0CCqysSIH6bUI2qWLu
 culCLT8nm2W0q7vGMVBRRxdD/ortYvOq+VTTcHOwvN9UVItrk8mZucG9EbCZCPju
 UZJfSXqhoW+SL61l1CseAFcis3BkSQ44c2dJbXGoHVcwGze8fBIpVnayHCbKmBhH
 1jdunL2X0gnABCF2zxPTA+J6mA3+qP7h00CAjLMHd6opROvGml7Duhuyf62Bw44i
 710OTchL13KqCeK/cm8Oi63xPYVHekLZLIbWunpBI8OmSsozNa21Nnwt8KngpxE+
 W6Yz+SsaHmNNhWIboy0vQ==
X-ME-Sender: <xms:O5OwZoTTdQaaSBZ5zcNMnnbys4YXODVg88PD9qK0U9XR9sXns8riBg>
 <xme:O5OwZlzD2Vko3ad2ilM2Zhz6tz_-OdSwXcGIC-olMNw0qF86Z6hUnoFbolAgDjj5V
 Z4A8GpO3MoKsZrwWZw>
X-ME-Received: <xmr:O5OwZl0ubb8Br23s-Y8zPqrTKVyrfJNHQ34CoWJgGBkCMNhCRVc0Dy12oreKgx-hah310y5S-jBBRx55osAlP8dg3rqitbWQMGr2b2PwBw8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:O5OwZsC3w0F_JUUouQ5iKDVel-LkVitNNfk9qgffncIdkjB4w-pm5A>
 <xmx:O5OwZhiBr_gPU_xXWODlsVqpdBZq3Dk82IM8zEAa5ifFnJvwjtU63g>
 <xmx:O5OwZoojvOOMZYVQ2vWFrvyLEoWVQ98TdhWD1o7oxyXygOrVbYaoPw>
 <xmx:O5OwZkiv3uA5noggE5uxprDHFM0kE3SpZttgr2NQ-k8zXyyeU5600Q>
 <xmx:PJOwZkuZEF3IYceQa7GSgK21s_LILvBrHovjqdc9knKYU0743kfaB78R>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:18 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 06/17] firewire: core: use guard macro to access to IDR for
 fw_device
Date: Mon,  5 Aug 2024 17:53:57 +0900
Message-ID: <20240805085408.251763-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function maintains the instance of fw_device
 structure
 by IDR. The concurrent access to IDR is protected by static read/write
 semaphore.
 The semaphore is also utilized to protect concurrent a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satU6-0002qJ-Ju
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

The core function maintains the instance of fw_device structure by IDR.
The concurrent access to IDR is protected by static read/write semaphore.
The semaphore is also utilized to protect concurrent access to the
content of configuration ROM cached to the instance so that the cache is
swapped to the latest one.

This commit uses guard macro to maintain the mutex.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c   | 25 +++++-------
 drivers/firewire/core-device.c | 73 +++++++++++++++-------------------
 2 files changed, 42 insertions(+), 56 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index a51aabb963fb..c3baf688bb70 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -454,21 +454,18 @@ static int ioctl_get_info(struct client *client, union ioctl_arg *arg)
 	a->version = FW_CDEV_KERNEL_VERSION;
 	a->card = client->device->card->index;
 
-	down_read(&fw_device_rwsem);
-
-	if (a->rom != 0) {
-		size_t want = a->rom_length;
-		size_t have = client->device->config_rom_length * 4;
-
-		ret = copy_to_user(u64_to_uptr(a->rom),
-				   client->device->config_rom, min(want, have));
+	scoped_guard(rwsem_read, &fw_device_rwsem) {
+		if (a->rom != 0) {
+			size_t want = a->rom_length;
+			size_t have = client->device->config_rom_length * 4;
+
+			ret = copy_to_user(u64_to_uptr(a->rom), client->device->config_rom,
+					   min(want, have));
+			if (ret != 0)
+				return -EFAULT;
+		}
+		a->rom_length = client->device->config_rom_length * 4;
 	}
-	a->rom_length = client->device->config_rom_length * 4;
-
-	up_read(&fw_device_rwsem);
-
-	if (ret != 0)
-		return -EFAULT;
 
 	guard(mutex)(&client->device->client_list_mutex);
 
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 00e9a13e6c45..d695ec2f1efe 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -288,7 +288,7 @@ static ssize_t show_immediate(struct device *dev,
 	const u32 *directories[] = {NULL, NULL};
 	int i, value = -1;
 
-	down_read(&fw_device_rwsem);
+	guard(rwsem_read)(&fw_device_rwsem);
 
 	if (is_fw_unit(dev)) {
 		directories[0] = fw_unit(dev)->directory;
@@ -317,8 +317,6 @@ static ssize_t show_immediate(struct device *dev,
 		}
 	}
 
-	up_read(&fw_device_rwsem);
-
 	if (value < 0)
 		return -ENOENT;
 
@@ -339,7 +337,7 @@ static ssize_t show_text_leaf(struct device *dev,
 	char dummy_buf[2];
 	int i, ret = -ENOENT;
 
-	down_read(&fw_device_rwsem);
+	guard(rwsem_read)(&fw_device_rwsem);
 
 	if (is_fw_unit(dev)) {
 		directories[0] = fw_unit(dev)->directory;
@@ -382,15 +380,14 @@ static ssize_t show_text_leaf(struct device *dev,
 		}
 	}
 
-	if (ret >= 0) {
-		/* Strip trailing whitespace and add newline. */
-		while (ret > 0 && isspace(buf[ret - 1]))
-			ret--;
-		strcpy(buf + ret, "\n");
-		ret++;
-	}
+	if (ret < 0)
+		return ret;
 
-	up_read(&fw_device_rwsem);
+	// Strip trailing whitespace and add newline.
+	while (ret > 0 && isspace(buf[ret - 1]))
+		ret--;
+	strcpy(buf + ret, "\n");
+	ret++;
 
 	return ret;
 }
@@ -466,10 +463,10 @@ static ssize_t config_rom_show(struct device *dev,
 	struct fw_device *device = fw_device(dev);
 	size_t length;
 
-	down_read(&fw_device_rwsem);
+	guard(rwsem_read)(&fw_device_rwsem);
+
 	length = device->config_rom_length * 4;
 	memcpy(buf, device->config_rom, length);
-	up_read(&fw_device_rwsem);
 
 	return length;
 }
@@ -478,13 +475,10 @@ static ssize_t guid_show(struct device *dev,
 			 struct device_attribute *attr, char *buf)
 {
 	struct fw_device *device = fw_device(dev);
-	int ret;
 
-	down_read(&fw_device_rwsem);
-	ret = sysfs_emit(buf, "0x%08x%08x\n", device->config_rom[3], device->config_rom[4]);
-	up_read(&fw_device_rwsem);
+	guard(rwsem_read)(&fw_device_rwsem);
 
-	return ret;
+	return sysfs_emit(buf, "0x%08x%08x\n", device->config_rom[3], device->config_rom[4]);
 }
 
 static ssize_t is_local_show(struct device *dev,
@@ -524,7 +518,8 @@ static ssize_t units_show(struct device *dev,
 	struct fw_csr_iterator ci;
 	int key, value, i = 0;
 
-	down_read(&fw_device_rwsem);
+	guard(rwsem_read)(&fw_device_rwsem);
+
 	fw_csr_iterator_init(&ci, &device->config_rom[ROOT_DIR_OFFSET]);
 	while (fw_csr_iterator_next(&ci, &key, &value)) {
 		if (key != (CSR_UNIT | CSR_DIRECTORY))
@@ -533,7 +528,6 @@ static ssize_t units_show(struct device *dev,
 		if (i >= PAGE_SIZE - (8 + 1 + 8 + 1))
 			break;
 	}
-	up_read(&fw_device_rwsem);
 
 	if (i)
 		buf[i - 1] = '\n';
@@ -729,10 +723,10 @@ static int read_config_rom(struct fw_device *device, int generation)
 		goto out;
 	}
 
-	down_write(&fw_device_rwsem);
-	device->config_rom = new_rom;
-	device->config_rom_length = length;
-	up_write(&fw_device_rwsem);
+	scoped_guard(rwsem_write, &fw_device_rwsem) {
+		device->config_rom = new_rom;
+		device->config_rom_length = length;
+	}
 
 	kfree(old_rom);
 	ret = RCODE_COMPLETE;
@@ -826,11 +820,11 @@ struct fw_device *fw_device_get_by_devt(dev_t devt)
 {
 	struct fw_device *device;
 
-	down_read(&fw_device_rwsem);
+	guard(rwsem_read)(&fw_device_rwsem);
+
 	device = idr_find(&fw_device_idr, MINOR(devt));
 	if (device)
 		fw_device_get(device);
-	up_read(&fw_device_rwsem);
 
 	return device;
 }
@@ -882,9 +876,8 @@ static void fw_device_shutdown(struct work_struct *work)
 	device_for_each_child(&device->device, NULL, shutdown_unit);
 	device_unregister(&device->device);
 
-	down_write(&fw_device_rwsem);
-	idr_remove(&fw_device_idr, minor);
-	up_write(&fw_device_rwsem);
+	scoped_guard(rwsem_write, &fw_device_rwsem)
+		idr_remove(&fw_device_idr, minor);
 
 	fw_device_put(device);
 }
@@ -958,7 +951,7 @@ static int lookup_existing_device(struct device *dev, void *data)
 	if (!is_fw_device(dev))
 		return 0;
 
-	down_read(&fw_device_rwsem); /* serialize config_rom access */
+	guard(rwsem_read)(&fw_device_rwsem); // serialize config_rom access
 	spin_lock_irq(&card->lock);  /* serialize node access */
 
 	if (memcmp(old->config_rom, new->config_rom, 6 * 4) == 0 &&
@@ -990,7 +983,6 @@ static int lookup_existing_device(struct device *dev, void *data)
 	}
 
 	spin_unlock_irq(&card->lock);
-	up_read(&fw_device_rwsem);
 
 	return match;
 }
@@ -1099,13 +1091,11 @@ static void fw_device_init(struct work_struct *work)
 	device_initialize(&device->device);
 
 	fw_device_get(device);
-	down_write(&fw_device_rwsem);
-	minor = idr_alloc(&fw_device_idr, device, 0, 1 << MINORBITS,
-			GFP_KERNEL);
-	up_write(&fw_device_rwsem);
-
-	if (minor < 0)
-		goto error;
+	scoped_guard(rwsem_write, &fw_device_rwsem) {
+		minor = idr_alloc(&fw_device_idr, device, 0, 1 << MINORBITS, GFP_KERNEL);
+		if (minor < 0)
+			goto error;
+	}
 
 	device->device.bus = &fw_bus_type;
 	device->device.type = &fw_device_type;
@@ -1165,9 +1155,8 @@ static void fw_device_init(struct work_struct *work)
 	return;
 
  error_with_cdev:
-	down_write(&fw_device_rwsem);
-	idr_remove(&fw_device_idr, minor);
-	up_write(&fw_device_rwsem);
+	scoped_guard(rwsem_write, &fw_device_rwsem)
+		idr_remove(&fw_device_idr, minor);
  error:
 	fw_device_put(device);		/* fw_device_idr's reference */
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
