Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 075F59477A0
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUE-0005I4-5C;
	Mon, 05 Aug 2024 08:54:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satU1-0005GG-G7
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8IZ5bfVFLX4rIiQS2rZQ4M3BHJvsAdGdGKx2Wo29X3M=; b=VVXGeydXMXOXwhK0r0M77tPeBU
 l/Uf97tNYofXeIU6594tA5nIToBWkvWdPSgqtHMJBe+6vMnbeHDM6qQLwzDsF9K9xAS4RYSOt+ofh
 cesYQ9vr4ReUFtLfenqcatnib07SiKHf8DtCRtbeutb2GgupZoRR4yb9yDLzOJ4nqFPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8IZ5bfVFLX4rIiQS2rZQ4M3BHJvsAdGdGKx2Wo29X3M=; b=RpMtV8WAmj3nisT+FVnIF0Dgoi
 Gb1MTu7YZS0ec+SA+VzTLFXZXs1c6BsOYrsgDEZWyzO4yqTCyxln7M1BrMJe1dZeDp553508xXKd/
 v4viLDq1F2j4xjVxEqBKXmaZKP3K1XRmzWGesvj4FI4hZxU2Xlx3xyI47mLaXdZgCGoc=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satTx-0002oc-K0 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:22 +0000
Received: from compute8.internal (compute8.nyi.internal [10.202.2.227])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 10DAA1151CA4;
 Mon,  5 Aug 2024 04:54:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute8.internal (MEProxy); Mon, 05 Aug 2024 04:54:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848056; x=
 1722934456; bh=8IZ5bfVFLX4rIiQS2rZQ4M3BHJvsAdGdGKx2Wo29X3M=; b=A
 ANgKhgW8x+mJuguKWNA9VpSSjsBdqALT9LkFuuX90aNcSNe+5XXJGYegN4s2FjMY
 Q2j1JiLm9yuypis5IB52w63n6s7i+M1eqfRZcqXl94CLuPvzlxzTAQJbb7jD0UXI
 xbwACCI0HIEmlks4O7EjpOX7uOqO3D1SAQwzaoiSACbkl1j4r0WGdelFhM+pxlw5
 M+gRBip0EVB9u6xnwfkuX65NbIt7ZPCc4214994O/hELj9xGn0SH5k3GdiMg7biQ
 22M3GsFWHUZy8DTg2NoQs0E/WpZZriCvCKKOWWMoJKp8K9sRQgZv6M79BDaxdAgr
 YXiCfstirIuuLS6b4jzKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848056; x=
 1722934456; bh=8IZ5bfVFLX4rIiQS2rZQ4M3BHJvsAdGdGKx2Wo29X3M=; b=t
 5GVy5Ck17hD6N+cd6fF/dIcoSLiyyMgGL1zkeYC8942J1TrdxK48J3BOBcBp+D3B
 70bF3aKJ0kNIBHhg3Gear/6HCw+dHjwtPNhsdPnzVFLIvo8PejB+6QTfmnpdEtA9
 Hl0sABwKSUCzV+gWaWA/oXuhwVfWGgEsuZ/WVpc+k8IuRCn62S07msvchqdGTqiv
 4AM9s0VwTzx0T8Xy/hj5b0WqZycwBwz+9FTUK6tWkw6y+9S1CHhumIXgykUq4oyK
 agvId98UW12PH4NeLLchKMOLULt9JULzTE18cI1bV4P/IP+aRmUwvfu05AJTgU7u
 h0upm/l4RukVPIm2zuOHQ==
X-ME-Sender: <xms:N5OwZifsB9cGHMCsmaul3i7wcRRiMRBB78N-D-8czMhIVYmIK9cQGg>
 <xme:N5OwZsOydHrLxuKj_ZkuInzeIc5cgD7bAiRWPGAaSOJtsD_S3BN5rC5cXqNwTweit
 RG9NazF-GMNGo9CXr8>
X-ME-Received: <xmr:N5OwZjinb9nO6uLH29r2_vyY4bo83YGSn28OD2rkTH6CwjtspS5kOHplRdZ_g8pyGnItT9ijZRR4G5TJuJDCOERs2j95VurkG6Zqdym2gRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:N5OwZv_uSeFQk3HdsU_dbxsUpMUVYjFnkh9w0HjYpG4JteO0MrwBpQ>
 <xmx:N5OwZuugiwqO2jtp-y2e6C6zSVgsYFlVPSyHmIhRviRUMsk1b6XQaw>
 <xmx:N5OwZmFCkZN56wrw5DFpSijH-zg0zqJE7knbpmdiyCu7RynbMBCOHg>
 <xmx:N5OwZtP6hRiGk06xgS1b0YSuf6E47vojbk2UAN21Vbiv5VItd_OhXQ>
 <xmx:OJOwZn7AswjMstBN_vMeZeXZb-I88Tog3y2msDy-OL5amN7SCAf86guP>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:14 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 03/17] firewire: core: use guard macro to maintain the list
 of cdev clients
Date: Mon,  5 Aug 2024 17:53:54 +0900
Message-ID: <20240805085408.251763-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The core function maintains userspace clients by the list
 in fw_device object associated to the operated character device. The
 concurrent
 access to the list is protected by mutex in the object. This commit uses
 guard macro to maintain the mutex. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.155 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satTx-0002oc-K0
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

The core function maintains userspace clients by the list in fw_device
object associated to the operated character device. The concurrent
access to the list is protected by mutex in the object.

This commit uses guard macro to maintain the mutex.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 619048dcfd72..a51aabb963fb 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -375,10 +375,10 @@ static void for_each_client(struct fw_device *device,
 {
 	struct client *c;
 
-	mutex_lock(&device->client_list_mutex);
+	guard(mutex)(&device->client_list_mutex);
+
 	list_for_each_entry(c, &device->client_list, link)
 		callback(c);
-	mutex_unlock(&device->client_list_mutex);
 }
 
 static int schedule_reallocations(int id, void *p, void *data)
@@ -470,7 +470,7 @@ static int ioctl_get_info(struct client *client, union ioctl_arg *arg)
 	if (ret != 0)
 		return -EFAULT;
 
-	mutex_lock(&client->device->client_list_mutex);
+	guard(mutex)(&client->device->client_list_mutex);
 
 	client->bus_reset_closure = a->bus_reset_closure;
 	if (a->bus_reset != 0) {
@@ -481,8 +481,6 @@ static int ioctl_get_info(struct client *client, union ioctl_arg *arg)
 	if (ret == 0 && list_empty(&client->link))
 		list_add_tail(&client->link, &client->device->client_list);
 
-	mutex_unlock(&client->device->client_list_mutex);
-
 	return ret ? -EFAULT : 0;
 }
 
@@ -1884,9 +1882,8 @@ static int fw_device_op_release(struct inode *inode, struct file *file)
 	list_del(&client->phy_receiver_link);
 	spin_unlock_irq(&client->device->card->lock);
 
-	mutex_lock(&client->device->client_list_mutex);
-	list_del(&client->link);
-	mutex_unlock(&client->device->client_list_mutex);
+	scoped_guard(mutex, &client->device->client_list_mutex)
+		list_del(&client->link);
 
 	if (client->iso_context)
 		fw_iso_context_destroy(client->iso_context);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
