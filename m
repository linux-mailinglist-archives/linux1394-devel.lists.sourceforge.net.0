Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AD2675020
	for <lists+linux1394-devel@lfdr.de>; Fri, 20 Jan 2023 10:04:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pInJo-0007BI-CG;
	Fri, 20 Jan 2023 09:04:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pInJc-0007As-5g
 for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jan 2023 09:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2GbfxkdYITK9cgpb8Yh7Mhw+V5G40/636EJmCJMDeaE=; b=HuqkB7F3EJTkF10NjZIYmVcrZf
 Pro23yB6nGQjKs4uOwlv3dG6o3i43lNrm05pZn1/NPORgDwxn95so6a9dGE2V9UIDhF7Zaw0g/OF8
 QCfZSPZ5tdfwstlkW4s/Wksr94KHcF8h+puvNveFGaUzGd4XPBz5lvkBjm7XKaRjwncc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2GbfxkdYITK9cgpb8Yh7Mhw+V5G40/636EJmCJMDeaE=; b=aZIsYdgn7AY8WuKBGjT23dh03n
 QkUJHnPg0JNvCymOY3cubXg6tOOr27i4aNQTF2OQmRpg1UdTxSX/yBaGPoGVdFEIaugugBSqr/Ynd
 AuXdc8ALawd4k3fDe4i8+IsGgmF+XqhhaOxqH7P/gPVc90SRWrakHRBHI8gfaScZ9F+M=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pInJY-00A0u4-Ic for linux1394-devel@lists.sourceforge.net;
 Fri, 20 Jan 2023 09:04:01 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 056745C0153;
 Fri, 20 Jan 2023 04:03:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 20 Jan 2023 04:03:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674205435; x=
 1674291835; bh=2GbfxkdYITK9cgpb8Yh7Mhw+V5G40/636EJmCJMDeaE=; b=r
 lEW288yUhUJxwNj2Dyd+rr1T9I2cIY4uxnXjBIDz/UQ6/ruHGlvms7Ga7E0wmgb6
 Bf6DXNI4ZwnwXOCTTz/LvCbCJdIaFWz1sTePysRXD165WYm3ll5WxIizkLc1b71J
 3a8yBhyzNOY0bWYh4bMXbQKDSAUDEP0hV9iVQiRwtFUg/Tt3ZuEC5vprICncQTKr
 WOdYyrr3Lbz2aIgHDDt5C2nTEE8iqYMxLFkjmLz04FwbQjcHdmFlyIswU/M5/XWW
 NzY1P0dPcooAlKpPPCmi4ap50jq6wBB7IHpxce32I/RzaPjAvGDozXbFfnkqZst2
 H4MTwMSoNv3j/39OV+Hbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674205435; x=1674291835; bh=2GbfxkdYITK9c
 gpb8Yh7Mhw+V5G40/636EJmCJMDeaE=; b=FO/dK82RiG4h7+gyFZbaq37tqY0b0
 lNZw+NatQY74p4do6MdHsjNUBCjgKycRA6ULtOY97yC243uabZ5JiAiLFIgEuHjA
 NIscmVF7ibI6WkHPZFEeFIkVRdq2ag2NWpfel5R5uHjSAqfENBgFXAmeYOQffMjD
 db/FFpAKm8tR/iAsVV7mW+yF7EZPK2GkmKVa2uf8YmJC0n0Fp2UuKtXGQHYjt2G5
 R8kkNlzFWJzY3jvO4r7PIcK5iqQSN6R80NwpPU3ij2tnB6s3yJXXi5nqE5LJo02i
 /FemlBPPkID3qNZVCGzEW49GKRjbhb4dd4PSytZU340njD5luDUKp3iag==
X-ME-Sender: <xms:-ljKYxVLVrSZMGlLkrAia9EeewWAxMDf62jgDRDYUi11lIA22pzIug>
 <xme:-ljKYxnyhAX2hyAu9LtUJ9uP_8nDqKQrcweCh8iAO03IWtHt4-6m-gZX-UY-4VOqN
 6V8HU2_nT1v1SRno9Y>
X-ME-Received: <xmr:-ljKY9biiZ-y97SlY_ZSNXVK-XJc4urnbTEsIlKOY-JDQK5S5D_3ZddUxPhpFIF2QldI8ayJSGfojEHYCl2hNsxONMkfUgSsbL5mLaKhuMKC1xcs79OP0OA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudduuddguddvlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestd
 ekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgr
 khgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgf
 ejuedvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhih
 esshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:-ljKY0VFrcWs9A0LuGiYoH-bYnVYHFFm8r28uTCMaDeP1stY1iK4Ow>
 <xmx:-ljKY7lA4sQiGtOBv9RWbky16OA6pBcVxY-WIIOg6JbTlNRfcM9e5w>
 <xmx:-ljKYxdh7rNXMx97CJ426idCe2cuExPcIO3Brei_nSbJBOiRSOFSig>
 <xmx:-1jKY5gyA3dCVuuM0PIszIaR7BrIlZX_q_DnmYMfmd2xZAMy3chcIQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 20 Jan 2023 04:03:53 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de,
	stefanr@s5r6.in-berlin.de
Subject: [PATCH 3/3] firewire: cdev: use single object to dispatch event for
 request to IEC 61883-1 FCP region
Date: Fri, 20 Jan 2023 18:03:44 +0900
Message-Id: <20230120090344.296451-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230120090344.296451-1-o-takashi@sakamocchi.jp>
References: <20230120090344.296451-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The core function always passes the data of request to the
 callback of listener in any case. Additionally, the listener can maintain
 the lifetime of data by reference count. In character device, no ne [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pInJY-00A0u4-Ic
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The core function always passes the data of request to the callback of
listener in any case. Additionally, the listener can maintain the lifetime
of data by reference count. In character device, no need to duplicate the
payload of request anymore to copy it to user space.

This commit extends the lifetime of data to obsolete duplication of
payload for request in character device.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 7fa49e51bae8..2c16ee8fd842 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -651,7 +651,7 @@ static void release_request(struct client *client,
 			struct inbound_transaction_resource, resource);
 
 	if (r->is_fcp)
-		kfree(r->data);
+		fw_request_put(r->request);
 	else
 		fw_send_response(r->card, r->request, RCODE_CONFLICT_ERROR);
 
@@ -669,12 +669,16 @@ static void handle_request(struct fw_card *card, struct fw_request *request,
 	struct inbound_transaction_resource *r;
 	struct inbound_transaction_event *e;
 	size_t event_size0;
-	void *fcp_frame = NULL;
 	int ret;
 
 	/* card may be different from handler->client->device->card */
 	fw_card_get(card);
 
+	// Extend the lifetime of data for request so that its payload is safely accessible in
+	// the process context for the client.
+	if (is_fcp)
+		fw_request_get(request);
+
 	r = kmalloc(sizeof(*r), GFP_ATOMIC);
 	e = kmalloc(sizeof(*e), GFP_ATOMIC);
 	if (r == NULL || e == NULL)
@@ -686,18 +690,6 @@ static void handle_request(struct fw_card *card, struct fw_request *request,
 	r->data    = payload;
 	r->length  = length;
 
-	if (is_fcp) {
-		/*
-		 * FIXME: Let core-transaction.c manage a
-		 * single reference-counted copy?
-		 */
-		fcp_frame = kmemdup(payload, length, GFP_ATOMIC);
-		if (fcp_frame == NULL)
-			goto failed;
-
-		r->data = fcp_frame;
-	}
-
 	r->resource.release = release_request;
 	ret = add_client_resource(handler->client, &r->resource, GFP_ATOMIC);
 	if (ret < 0)
@@ -739,10 +731,11 @@ static void handle_request(struct fw_card *card, struct fw_request *request,
  failed:
 	kfree(r);
 	kfree(e);
-	kfree(fcp_frame);
 
 	if (!is_fcp)
 		fw_send_response(card, request, RCODE_CONFLICT_ERROR);
+	else
+		fw_request_put(request);
 
 	fw_card_put(card);
 }
@@ -818,7 +811,7 @@ static int ioctl_send_response(struct client *client, union ioctl_arg *arg)
 	r = container_of(resource, struct inbound_transaction_resource,
 			 resource);
 	if (r->is_fcp) {
-		kfree(r->data);
+		fw_request_put(r->request);
 		goto out;
 	}
 
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
