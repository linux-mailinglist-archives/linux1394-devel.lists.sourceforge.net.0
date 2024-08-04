Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E317B946ECF
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:02:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saasq-0004tm-Hj;
	Sun, 04 Aug 2024 13:02:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saaso-0004tT-KI
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=riXT/ZPaI3yITLXofYuDWzvYYTW64WraJqRL8dIk1u8=; b=Gl58y41Y236MZZWehYttCiHA5P
 VtnSsdn6uqNg4j0usxeJBW1zAKnYJH8fDM0gMITPiPQkt93faQbeq6WeOZCqGir/1zUiBkkHt4jg7
 /VfffZdHDn5Da6sJLmKG90mycawK748+GBb7QULO0q8kRi8Q1Luxqu8L50I6EJYiQeLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=riXT/ZPaI3yITLXofYuDWzvYYTW64WraJqRL8dIk1u8=; b=VANWFU23Y81Qqfne4vUgu6zY7Q
 NzMmpOgH8xF602jlsI50iuytMAH30EufidF4flF3CNtK357fFVAlXb5/ANEAlefzJEons2tLHZKGQ
 gGokUZq+WFrUUfxNcL8vzEW+PxRJpXyRBjjovGLbxCEUmm/0w2JjqFSnkjAQW3+B+CCY=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasn-0001Dh-TH for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:46 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfout.nyi.internal (Postfix) with ESMTP id 55AAA1388062;
 Sun,  4 Aug 2024 09:02:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 04 Aug 2024 09:02:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776560; x=
 1722862960; bh=riXT/ZPaI3yITLXofYuDWzvYYTW64WraJqRL8dIk1u8=; b=j
 sgF6qVnFxJ9MLP3LeORc+R1PNncoIFM9zgGsyGdkUPE+VW3VN1Ja51EWMWpxnSn3
 pDNsVO6yLFDl2ScXZEHuzZnSfv2ykIZDHijt2kW6/QsIb9Fx/D0OY98NNIWykKbh
 iPV2Czbb6d2OuGdw9st6R4DiVm3pT3bEsk8nu5BNfyWESaER8n/MhUKE3+JsA337
 eLlFgs/qkmBL3nYZQnzWFtwIRDhQTFO8IRC5NnIKPBDYqjeX2FbfSx1hB+Yieg5P
 XR6e4O4m0fIu386ZteCH6GA0fzCxMDoXoUnDbaADxMsVVaAoheReARD3XBkuGb+M
 E073eCAh4cc6dHG4Z4P1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776560; x=
 1722862960; bh=riXT/ZPaI3yITLXofYuDWzvYYTW64WraJqRL8dIk1u8=; b=i
 c0zytlny3tW5mxYP9Q96bT+HC5/eGZ4+XbqhrHtj7oSPjGkgdsIQsvvj8qOaGyZX
 TdafKBoqN1ovXhgOHMWNTdlbTHTD+W3KVfVXGV7iqVxDn0UTn74gDuI0dAB3ic2X
 zS0CfxxJZIw1ypWuUjvYGyyh9W8QkX0xqRs19QMxBBTbW5ZNthDASwtO5D2Dyrqj
 B3hnqJRuOKezzOJuR/oO36IKSHw1nEDsqwNtBbnj1QtvZgW4OftQYY2d7CRHrshT
 cKm3SZ2NmI5p7A5Q7ZHeziG/HdhSXA4h+/PJVca5P6zbLk3gggNgcA60PiKED+my
 krK5Rus4OlhIzvV125SHg==
X-ME-Sender: <xms:8HuvZnk5jbHd5FWrhKTIauz1eiLD1U3AEJYPqVnXokppjjBkiwf4_g>
 <xme:8HuvZq1KRqyyVbYwScZWuZWw9s3hnPW1W6W0tlf10MBpUjFEO49G98mfG1LZ13cgY
 af15ZB2aun8SiOYJPw>
X-ME-Received: <xmr:8HuvZtqR4VV_22Sa4xPxaqR1XkZoOf1RBi6d6ufaPVfGr_T1yMkeqDKi1eAlLu_hes_Ph2Csvnoan5uy4GolKMPDEl57nxhjK_5qs23XBDtl5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:8HuvZvlh8P-Hj7GiMND1-be3ADT016lnynvvFDryW8WPBQt2SlSTug>
 <xmx:8HuvZl0xL20k9DrqdB2VA00IeLInpPY7w6SQPkOaVN9aKbVshkUBkw>
 <xmx:8HuvZusuFIy4VyEArVFZ-8Fr89DQUffpzdEaWKTIZniICh2S5HOLWw>
 <xmx:8HuvZpWtAETnh6bjgL40PerGn4zaeBNn4GsNY1bvWsnUDAWnLiUJvQ>
 <xmx:8HuvZjAt-gTKyCc7f6Yot7PYNQK953SRydj7aZkBkrnpmr5kYfje2MHB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 08/17] firewire: core: use guard macro to disable local IRQ
Date: Sun,  4 Aug 2024 22:02:15 +0900
Message-ID: <20240804130225.243496-9-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function provides an operation for userspace
 application
 to retrieve current value of CYCLE_TIMER register with several types of system
 time. In the operation, local interrupt is disables so [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.146 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1saasn-0001Dh-TH
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

The core function provides an operation for userspace application to
retrieve current value of CYCLE_TIMER register with several types of
system time. In the operation, local interrupt is disables so that the
access of the register and ktime are done atomically.

This commit uses guard macro to disable/enable local interrupts.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index c3baf688bb70..90e9dfed8681 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1263,29 +1263,27 @@ static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
 	struct fw_card *card = client->device->card;
 	struct timespec64 ts = {0, 0};
 	u32 cycle_time = 0;
-	int ret = 0;
+	int ret;
 
-	local_irq_disable();
+	guard(irq)();
 
 	ret = fw_card_read_cycle_time(card, &cycle_time);
 	if (ret < 0)
-		goto end;
+		return ret;
 
 	switch (a->clk_id) {
 	case CLOCK_REALTIME:      ktime_get_real_ts64(&ts);	break;
 	case CLOCK_MONOTONIC:     ktime_get_ts64(&ts);		break;
 	case CLOCK_MONOTONIC_RAW: ktime_get_raw_ts64(&ts);	break;
 	default:
-		ret = -EINVAL;
+		return -EINVAL;
 	}
-end:
-	local_irq_enable();
 
 	a->tv_sec      = ts.tv_sec;
 	a->tv_nsec     = ts.tv_nsec;
 	a->cycle_timer = cycle_time;
 
-	return ret;
+	return 0;
 }
 
 static int ioctl_get_cycle_timer(struct client *client, union ioctl_arg *arg)
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
