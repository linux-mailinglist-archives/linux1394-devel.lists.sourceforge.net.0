Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6B966D9CF
	for <lists+linux1394-devel@lfdr.de>; Tue, 17 Jan 2023 10:26:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pHiE8-0004Z4-Qo;
	Tue, 17 Jan 2023 09:25:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pHiE7-0004Yw-HN
 for linux1394-devel@lists.sourceforge.net;
 Tue, 17 Jan 2023 09:25:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Df24bCGT4QZ+Xvpi3Tsf1b/KvctyrLLDs9supDMoYb4=; b=cVUuBG+rHaUAFCVvWK5gHOEMk9
 Rc+mpjl1+pWtKrA3scpiMGpIFHpN8G9Hi1+CHmPKzimQpzfuqdWgphoYrgSjtgqRhusVubvhvTmFc
 C5trlkabarvnEWboBcUVEU1u2gZtEO8PbJNY+rWNwMi2wOGB0Ok58zGg5kbu5kzpT/vw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Df24bCGT4QZ+Xvpi3Tsf1b/KvctyrLLDs9supDMoYb4=; b=HepLNg9Er0Q1ftG8iZigYLVt0h
 I6NrBR1py3+DxAR985QYdAl3pNamZa11guMPQxWN/Ax3nx9Fid+TGdqy/uN18yLn95Dot+I0qH+/B
 yc8JROTRQ1FbY1R2HJHn3zxhMMi85MaPrZGd5tEChQofsynoIqja2qZH4wUM+p6znuoM=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pHiE4-0003jr-Hf for linux1394-devel@lists.sourceforge.net;
 Tue, 17 Jan 2023 09:25:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id EE8895C0064;
 Tue, 17 Jan 2023 04:06:16 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 17 Jan 2023 04:06:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1673946376; x=
 1674032776; bh=Df24bCGT4QZ+Xvpi3Tsf1b/KvctyrLLDs9supDMoYb4=; b=q
 ldaI/6cbb+baLZkEdkC1XqC6QOIjuL0ubizkmMPLME8ZyGmv7q74IcY99czsnFTi
 4BILWFI/uMbx6qchUCGu7MySS3xrgJFGN3v3xtSgVwP+i02KcigDrj2tVijd1Isz
 jopMEmlnEQmDKsqb4v5huMmtPkJ5EIoD9HMQvwIsyQyBfu7s3SEH0xXvCPPVVB3g
 xnwEc8co7h/DfWJ/3T44oHVT719kaoTRcCAoPqy/Ex+FYRTjoGhyiEkPFCPNfQVi
 ByRcWbwuvAztJV+nr2U3m4BTmkmPSj6x5WM/THlBCwMIRYMBomXwuobGUlj53T31
 ZZ6erUhTaatC1QkYqgr3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1673946376; x=1674032776; bh=Df24bCGT4QZ+X
 vpi3Tsf1b/KvctyrLLDs9supDMoYb4=; b=YssJBzORyH6tOfwDPpV5JsC+tXJbj
 wvYj7U/+2mWIS26rlbRA+fA/SyUqeLFdRLOnbyPjJtl5iKp9fKw4l+fIuLnqVnS+
 1z1nkLkNrotnX8uW94SwaxUHbQhKFMefpjFavgEklcJ9/mepK+2NCG5ichNux8ry
 kp6r5bLFHtjYk1u9czEoihFhic+PZsV+Yy0JFVcKO4NIHZyDVX7v/yaKy5MJWLaX
 ooR5aKn0lCNyRtjS8XDp71QO4zpGyweIKCtwDHTVa2BPVc7sIviDN6TKYjCdOBzu
 bdZP3GHf8GsBXRqZslGI+T3U/XKfO3tYrOo2bOO9ZqJjt9ejXHE40UrPw==
X-ME-Sender: <xms:CGXGYxNkJmywlUCvR2d8GV-9BqrrCACcfT6QRJbQ4rilStP_kOseqQ>
 <xme:CGXGYz_Ku41BPKqwMzIutVvTaLJaJL2oHaX02wQU9B99t4Q6WCEpi5ErMifa2A0W6
 fhhZYvrn_2NkOAFW5M>
X-ME-Received: <xmr:CGXGYwQPHhyiu7OImQ9QnFZ1ixp2mD4fKajlhkTIq-m4lM6_jHPakO5eTM25IGrun1caWKRaBCKMElQ56GL0aJMqjsBtcst8MKeC-7mnmRuFcHMBt3ZFm_Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddthedgudefudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestd
 ekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgr
 khgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgf
 ejuedvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhih
 esshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:CGXGY9to3Y48oTmuRfGeZcNC3Qi-EFR0UBH7-X11-P8Yeq_76QoxJw>
 <xmx:CGXGY5cropCq127Ut5Af_sQjlQcP8Kp6fxV1uzb2yVUPOG3nwAMgew>
 <xmx:CGXGY53VUOpuAlAuoypPc5HDhyxoUNHloQI2HmEnzAm1ZWPwP5GBIA>
 <xmx:CGXGY95xcbGvPITu_u_qmCGOtgSPI8PEZ3fG3f9ViNq6ON3V4Pp-IQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 17 Jan 2023 04:06:15 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de
Subject: [PATCH 1/1] firewire: fix memory leak for payload of request
 subaction to IEC 61883-1 FCP region
Date: Tue, 17 Jan 2023 18:06:10 +0900
Message-Id: <20230117090610.93792-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230117090610.93792-1-o-takashi@sakamocchi.jp>
References: <20230117090610.93792-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patch is fix for Linux kernel v2.6.33 or later. For
 request
 subaction to IEC 61883-1 FCP region, Linux FireWire subsystem have had an
 issue of use-after-free. The subsystem allows multiple user space listeners
 to the region, while data of the paylo [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pHiE4-0003jr-Hf
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This patch is fix for Linux kernel v2.6.33 or later.

For request subaction to IEC 61883-1 FCP region, Linux FireWire subsystem
have had an issue of use-after-free. The subsystem allows multiple
user space listeners to the region, while data of the payload was likely
released before the listeners execute read(2) to access to it for copying
to user space.

The issue was fixed by a commit 281e20323ab7 ("firewire: core: fix
use-after-free regression in FCP handler"). The object of payload is
duplicated in kernel space for each listener. When the listener executes
ioctl(2) with FW_CDEV_IOC_SEND_RESPONSE request, the object is going to
be released.

However, it causes memory leak since the commit relies on call of
release_request() in drivers/firewire/core-cdev.c. Against the
expectation, the function is never called due to the design of
release_client_resource(). The function delegates release task
to caller when called with non-NULL fourth argument. The implementation
of ioctl_send_response() is the case. It should release the object
explicitly.

This commit fixes the bug.

Cc: <stable@vger.kernel.org>
Fixes: 281e20323ab7 ("firewire: core: fix use-after-free regression in FCP handler")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 9c89f7d53e99..958aa4662ccb 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -819,8 +819,10 @@ static int ioctl_send_response(struct client *client, union ioctl_arg *arg)
 
 	r = container_of(resource, struct inbound_transaction_resource,
 			 resource);
-	if (is_fcp_request(r->request))
+	if (is_fcp_request(r->request)) {
+		kfree(r->data);
 		goto out;
+	}
 
 	if (a->length != fw_get_response_length(r->request)) {
 		ret = -EINVAL;
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
