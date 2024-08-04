Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E4E946ED1
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:02:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saass-0006Tb-Jy;
	Sun, 04 Aug 2024 13:02:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasm-0006T4-UT
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8IZ5bfVFLX4rIiQS2rZQ4M3BHJvsAdGdGKx2Wo29X3M=; b=Qf2eBD0CyX/mSp1/9OxgBepCH+
 4SXqy80s3uNH6Te9YU48FT+g7ajDYn/HJ8QOYEA7biowWHJG1SqL2dPo4yZ0335YsSrXNRyAZCAI7
 gpB/P4okdRXcwC0jp4CmIyuZxyilrsr2uLL1JpdPWyRHZxpLSfgS19NQaB3vxGplnXwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8IZ5bfVFLX4rIiQS2rZQ4M3BHJvsAdGdGKx2Wo29X3M=; b=ZAgD89zqgdA5BlQ7QZUNnfSJG5
 lI3l17cGDUWqaj80msdbtRmTU3QN01DYG4FD616S0+DZBhXJ7gq4CGSTcqmfUgjBUCCpBrl2YwQwg
 TinbGJObokheVz/U7aUb+JW8cWFpxQWSwN2Xash4y/DDVuIheyKcaJluEuuxP4twzVlo=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasm-0001Dc-7g for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:44 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id A59251388027;
 Sun,  4 Aug 2024 09:02:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sun, 04 Aug 2024 09:02:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776553; x=
 1722862953; bh=8IZ5bfVFLX4rIiQS2rZQ4M3BHJvsAdGdGKx2Wo29X3M=; b=T
 13axiZ2v/1vg5Aa1EwHifIKLIvzas8XqIQCVCX5hlwnMaKTmjwP2KU0cyHZX7deW
 YME6ZH9UrsrqRnu5/XmApXleJR7ocAMx3LMc41XoHEfeNbu1AKr1gO9vbEK/Zsy1
 /iIu+9+8W24v4/Z/iIfn8DgZlswQGEWM69C7URqmHIPcSgWk859zl32cLhzoATSp
 e78uLU2tZlgIPit/WaJzvurbJdrYHGC+/uw4YDqS6CpQmiGSL+lG1Ik2P3V9VBSp
 LpMXRCp2R6ugndHN48nemEumyQa02JsrX+sXk7b1n2fpv4mfpba6u0IyMTVXQU3Q
 wNjZmvAL/V1O5OIqN40yA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776553; x=
 1722862953; bh=8IZ5bfVFLX4rIiQS2rZQ4M3BHJvsAdGdGKx2Wo29X3M=; b=q
 Gaf0/AfPyGgMOEPDl8qZ+QHhvk6qy0CuM+U/2I9H2j5/ejtWxeFK29cp+a1yB+ZM
 ldCxe+L0DywFWjANCrlBkS9dlru/Qj10HN7sZqnjBLA2iGKOyXbRlKiVVeoc/02M
 gg8P35BUpidelYE/galFAaDg29fNjDmE+RVYGWoT1w54QEGMfpT3UbGDhpiOdfnF
 TlLOJ6qsW8wpVPUpO6TbOiHyKt+W4T2w/A87jfmKfNxBmGR3EVVg8GtPZ6X4/0oP
 TfGTp8OVAWRDMQxuiw9k4ZnzJqIBvPGXFC5X9bcaSAPT6lNSQ3k4o5LeFtmPeMQ5
 oBkSX5/pboJ3yfhfyQYzw==
X-ME-Sender: <xms:6XuvZlJgtw0_AQNJs9WXiTbI8ln5jvsT6RBOSB3z8uYpxylekaWkvA>
 <xme:6XuvZhLLK8clcV5jb8BhI49je5TYSzybWwcTB-c_cEEseHkU1rndKLbGtigc17nRH
 3e-ZXrDskJ2yWmQ-vA>
X-ME-Received: <xmr:6XuvZtv6D-4WZAvClY8zBk_IXoRbeWHSFxjQK4i-3khwtJ0SU-CoRHOHcxs0zd5_DOdq_ngiwMBz-WqB5U4yxa6WTA5dlnOJX0D6dUjFuMwf_A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:6XuvZmb99ShGjn-VFtMSoLR93EV9YCtHTxcYMW9Ie0ktidnyXlc2sw>
 <xmx:6XuvZsZMsrygfPlJl-P6V7yb5E9fA9Cw4K0UMgabgFr6_HzCXZzaWg>
 <xmx:6XuvZqAwU4R7W5Qk8LATYkpCIdS5mIXIgkEWBHRdAyoVNRQoaHZziA>
 <xmx:6XuvZqYFORueeMctSSx6ZVeGSYMmObhzSEG2L5qho2zWCkhlWEASEA>
 <xmx:6XuvZrnsE-CsGcsrBq3JeGqDFluCnOhBxf2H_k7rME97e9mcFXiXESu9>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:32 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 03/17] firewire: core: use guard macro to maintain the list of
 cdev clients
Date: Sun,  4 Aug 2024 22:02:10 +0900
Message-ID: <20240804130225.243496-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The core function maintains userspace clients by the list
 in fw_device object associated to the operated character device. The
 concurrent
 access to the list is protected by mutex in the object. This commit uses
 guard macro to maintain the mutex. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1saasm-0001Dc-7g
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
