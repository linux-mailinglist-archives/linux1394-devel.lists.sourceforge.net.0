Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 387C494E48A
	for <lists+linux1394-devel@lfdr.de>; Mon, 12 Aug 2024 03:43:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdK5W-0001zY-M6;
	Mon, 12 Aug 2024 01:43:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdK5V-0001zL-VP
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 01:43:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=losiMWDobhTks5tA1JStZawdF4CWd89Wr88BY0X0J1I=; b=LNSDxQ5AIV+RYLP4FFocsv2gUi
 MVeWsm8JTnL8v821/tIbfFY/5Peg4zBnHYPWnA8RDSuCjUscwuWyS16ieNrtHQTBihT7VLjPZEbN0
 OimRsHA7VvA57HIqfdK88UyQNE3RajhC5kB3ssa3qez7NXpfrVIBrfgwDR9l97sHLpiE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=losiMWDobhTks5tA1JStZawdF4CWd89Wr88BY0X0J1I=; b=aI7sJywfZY0gyyoyFsJuZamBA5
 uf3F7rL92ZViFhQlTJDQLgXSkCrEDB2OrGUmfJG3yXepRUESnPTwhl6SyExR9J7hdENkbibH9U4Bp
 mO5vVysoPvXGtO9MjvY0+kt2Yxqj3WOSE3cuWzVNYtUtyLonSdBBaDbIiHUzwMU2kTDo=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdK5V-0006AP-5U for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 01:43:09 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 955AD138CD52;
 Sun, 11 Aug 2024 21:42:58 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 11 Aug 2024 21:42:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723426978; x=
 1723513378; bh=losiMWDobhTks5tA1JStZawdF4CWd89Wr88BY0X0J1I=; b=S
 856z2ujthWfeYklekkjlx4LFhUWDfY9dFo4sjr9oFyDNhHzuHQT0obhKuipSSOf2
 yRngsinvk6+x6Y4FM6zcf8R/UQVF3mk4j+IFxFwalVjzU4CEdd1QdWklaeZBFE2q
 +iuuPocxPHYXjkCijVTlaTXJ/zTD7U/azmRQwrFUfpDRbs61PWuY7T/jMuKUb9G0
 sxEGaErkNkQKBnIpwIZkiQcLq2mlsaTdTiP0ngWc0SIMy7DeBT/b4rf80WrRvJv8
 aKWn2wZnE+qEFyFIJAjNtoVqct/2eAgdJ7Im8PE9IYT633rhV5hBYMloo/+7FLdH
 q09l/y3dXfL3iNpwAoonw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723426978; x=
 1723513378; bh=losiMWDobhTks5tA1JStZawdF4CWd89Wr88BY0X0J1I=; b=s
 OX8uFj9c3FMexS4a0P6Ju4eFPhBgIkojEOXkQX2r8kosbSPVuNIXkdAGnXNAdAhr
 MjHDUd/q3v+v6R6vmxzP2C8TQfIEuWaYneMWoSnDywirhXr/hdkO1ZxjtJ7aqmRs
 f3lvxifm6WjYptGzE+SQj7L+0EywXEXPjQ28KbOrcTdiCFB8/24O/biRznMTEBhr
 izV9b3+yjNLP+uXexF41L2Cx4wvbvJxkuRTzBWhjca+pGSYbERiNDUrY+xWAJPcH
 5iGPQRYKfvWUICDN0EjyO7k9iHZZRi7F8TldBEcKRbNRpR9bh3YKl0NugcutPpVH
 e50ZQgLyb0fh6QsHXZiTw==
X-ME-Sender: <xms:omi5Zmzg_7cyZKH5vr-gEhbGMp1kIGbNcftb-aQgsBRnPW79HJjx1Q>
 <xme:omi5ZiSyGQ9zqRwFS3qwxd--OgIEn02CohfF5aHYbXuXqx9hajV3VgDg8usmXDwri
 Y-rObtVnK5o8DMITZo>
X-ME-Received: <xmr:omi5ZoWJjewE2Gk6XxhOAOh6gZXGV0bLLuEKWZW3tNbm5GA5lIAMvRPtJB4RhuzzeBCBf2qoBoudgkuc0Vc5eUta_RD2TsevAgryOhORcPRPAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrleelgdehudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
 tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepvdejgfejuedvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffek
 vddtnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhig
 qdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:omi5Zsh3UENwNHXnT5Tkg7S_78k_gZ8oNuukKUIsoFJsEhWCAf9LqA>
 <xmx:omi5ZoB0hA12oJevx0NBXpMB1sOz8q82Nxf8vtVVojp-bNlgOS3tJw>
 <xmx:omi5ZtI296jEcOY-1YBm0wPirttJJqNrQddDNWqBi4h6WLXo8LaQ6w>
 <xmx:omi5ZvCUuCQ-TxVJ7myfXk2kXUPjT0AQeJsRjtQtEoryNkmO2LVgKg>
 <xmx:omi5ZrORuRUJy6pmOeLp8l_I0iH20SBTedgB3KlyDT2jLwTcBJbBU5xO>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 11 Aug 2024 21:42:57 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: use lock in Xarray instead of local R/W
 semaphore
Date: Mon, 12 Aug 2024 10:42:51 +0900
Message-ID: <20240812014251.165492-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240812014251.165492-1-o-takashi@sakamocchi.jp>
References: <20240812014251.165492-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The data of XArray structure includes spinlock and requires
 no external lock,
 while the data is still under the critical section by fw_device_rwsem.
 This commit deletes the critical section. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-device.c | 19 ++++++
 1 file changed, 6 insertions(+), 13 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdK5V-0006AP-5U
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

The data of XArray structure includes spinlock and requires no external
lock, while the data is still under the critical section by
fw_device_rwsem.

This commit deletes the critical section.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 9f3276aa463a..32ac0f115793 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -806,7 +806,6 @@ static int shutdown_unit(struct device *device, void *data)
 
 /*
  * fw_device_rwsem acts as dual purpose mutex:
- *   - serializes accesses to fw_device_idr,
  *   - serializes accesses to fw_device.config_rom/.config_rom_length and
  *     fw_unit.directory, unless those accesses happen at safe occasions
  */
@@ -819,8 +818,6 @@ struct fw_device *fw_device_get_by_devt(dev_t devt)
 {
 	struct fw_device *device;
 
-	guard(rwsem_read)(&fw_device_rwsem);
-
 	device = xa_load(&fw_device_xa, MINOR(devt));
 	if (device)
 		fw_device_get(device);
@@ -874,8 +871,7 @@ static void fw_device_shutdown(struct work_struct *work)
 	device_for_each_child(&device->device, NULL, shutdown_unit);
 	device_unregister(&device->device);
 
-	scoped_guard(rwsem_write, &fw_device_rwsem)
-		xa_erase(&fw_device_xa, MINOR(device->device.devt));
+	xa_erase(&fw_device_xa, MINOR(device->device.devt));
 
 	fw_device_put(device);
 }
@@ -1087,12 +1083,10 @@ static void fw_device_init(struct work_struct *work)
 
 	fw_device_get(device);
 
-	scoped_guard(rwsem_write, &fw_device_rwsem) {
-		// The index of allocated entry is used for minor identifier of device node.
-		ret = xa_alloc(&fw_device_xa, &minor, device, XA_LIMIT(0, MINORMASK), GFP_KERNEL);
-		if (ret < 0)
-			goto error;
-	}
+	// The index of allocated entry is used for minor identifier of device node.
+	ret = xa_alloc(&fw_device_xa, &minor, device, XA_LIMIT(0, MINORMASK), GFP_KERNEL);
+	if (ret < 0)
+		goto error;
 
 	device->device.bus = &fw_bus_type;
 	device->device.type = &fw_device_type;
@@ -1152,8 +1146,7 @@ static void fw_device_init(struct work_struct *work)
 	return;
 
  error_with_cdev:
-	scoped_guard(rwsem_write, &fw_device_rwsem)
-		xa_erase(&fw_device_xa, minor);
+	xa_erase(&fw_device_xa, minor);
  error:
 	fw_device_put(device);		// fw_device_xa's reference.
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
