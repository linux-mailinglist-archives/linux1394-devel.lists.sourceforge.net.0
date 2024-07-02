Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0FB924B7F
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Jul 2024 00:21:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sOlrk-0006eD-0x;
	Tue, 02 Jul 2024 22:20:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sOlrh-0006e3-Ne
 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EbApcb2/ZG1b4FTbJnSVe3gmHko9rsuV4/ihawAZkWM=; b=NUs3Dj04fz7Ffy0VN1yNF9GANF
 ulFi/UHN+R6LeEK+JQzlo3kHj+hw61gX9Bpu6rqLGXSLGxhdClKetP/EqQhv6hkO3OP788iVlUbuM
 NObcsXu/P/pGvP7Q8XjNsw1Q7blm8GCiUHKarnpV0wKI71sEOod3RxBxbrp/OkuOyWp8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EbApcb2/ZG1b4FTbJnSVe3gmHko9rsuV4/ihawAZkWM=; b=DKpfNK5CgZ4kk0S2JszSxw0JK6
 ZQDl2KmWl643PtRl08aK817cY1gcGt9yP3L3f5t7PvF7/TdjoL7bsEZQVoGi8bMLofFMKyVLo4Ndi
 znZvfmyDGKrVcA5U84rMJmdPjlIjXOJxZlbNyHFXbk1z0j0lkgeHBW8JJuZEuDB1SksI=;
Received: from fhigh3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sOlri-0008Qz-S7 for linux1394-devel@lists.sourceforge.net;
 Tue, 02 Jul 2024 22:20:46 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 7C29611401FA;
 Tue,  2 Jul 2024 18:20:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 02 Jul 2024 18:20:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719958840; x=
 1720045240; bh=EbApcb2/ZG1b4FTbJnSVe3gmHko9rsuV4/ihawAZkWM=; b=R
 5jpVYNX+AnXMwzSz31HvDw/vaRZqRnhw+Q+Cv7wcAe6J7/N0HFozpBxKdTcSgeMP
 tIICfCYaFa4w22FLuZCjGl1P6/cOjrGsn4Ruy61QLGzRKp2uWdxnJWgmNwXJdE4j
 nEyO7jv+LtY4E5rdjxy1rrfOrZ262jQUp2/CrGrMMBn1z77qiX08Yn5rj1tXokb9
 ohRUzo9yB5ZFf8No334ZP0OsHlXuxvm6LE31yZYCQaHV597iOw0Q1XTt4fdKzuRw
 yxrNrDl33Vva0eR/kQ8G+PU3l0EaiIvMsgy0gEFdsjzzTp+3wApXBJmqeR841+6I
 REgZsd5zGWeqccx/26nDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1719958840; x=
 1720045240; bh=EbApcb2/ZG1b4FTbJnSVe3gmHko9rsuV4/ihawAZkWM=; b=F
 iRZCrT82916bi4M2IEzm9JnRWiVH/T0kwDANNWg3aMlrG3CvX4L/bGoQOC5P5nQS
 tNC5IFxxhGlEJ8L56QBcvqhy9nXSBW88isqxgSfUe/5aROXGLQNZNlBYESxTUWnu
 eOWnqqP3UDjndCenGOJtfgoWu3dtgzDUZahVNDlRHIjwSSv5uVZAT+fbhH9O8m0x
 9Zj2nYlZrW53z82Kd4nfqXt10srnZnFuGa1V3OxZROch/LO8UwFCsC8EQSGgP5fM
 kfjCYdUKM7YDd7rEz9nbpK1HnVKPNyOxC9DNGcK2I4GWAp5K3EGPBPnYbS8YiN4G
 6LeoPRZpkdzKzW8dGPs/A==
X-ME-Sender: <xms:OH2EZrvFZZ5oqOrT8KEq9t1H4JjlReQgyFk2yQwnDmpMz6sOI0B2cA>
 <xme:OH2EZsdOVZsL1HqrQkJIVSdvHc5jozLxwtqsEU5iYhZCx6XUArY0JV4SjwiLHQKXJ
 1CzPC1BUJp-YaRVVmA>
X-ME-Received: <xmr:OH2EZuys7fB5txqiRfyw6FxxqSDixDLRIUo71PKn3k4sCQhXUuCxYm3TjkR5Tnf1HcRMpGAAzTXwfGrEoIh21X71CSCTqDFshbTMMShVlNeoPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:OH2EZqMUAnVFO7cBkCBGDbDfypuxw-1e9OI5UqrQivByQ-TNlX8V7A>
 <xmx:OH2EZr__9EwODu9AU0U76u-4oiwxmcVIlXTDmNyUcA4i-xmQL5Cuew>
 <xmx:OH2EZqUaEcluOG2Br3_b_KX-9-0lJFc0cr5ixbquhq3W777aOw4vxQ>
 <xmx:OH2EZscn8hJRCQp-whIP2q3NfGvXf9lQ44HERvK5jaO90uYN35Dhcw>
 <xmx:OH2EZtKl0mp2-ZgULQlBzDF9wtDOOkCtGTm-9IYpHTX1d0S7BprL4nGe>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 2 Jul 2024 18:20:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/5] firewire: ohci: use common macro to interpret be32 data
 in le32 buffer
Date: Wed,  3 Jul 2024 07:20:30 +0900
Message-ID: <20240702222034.1378764-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
References: <20240702222034.1378764-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 1394 OHCI driver configures the hardware to transfer the
 data quadlets of packet via DMA after converting it to little endian, therefore
 the data is typed as __le32. Nevertheless some actual hardw [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
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
 [103.168.172.154 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.154 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1sOlri-0008Qz-S7
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

The 1394 OHCI driver configures the hardware to transfer the data quadlets
of packet via DMA after converting it to little endian, therefore the data
is typed as __le32. Nevertheless some actual hardware ignores the
configuration. In the case, the data in DMA buffer is aligned to big endian
(__be32).

For the case in big-endian machine, the driver includes the following
interpretation from __le32 to u32 (host-endian = __be32):

    * (__force __u32)(v)

In include/linux/byteorder/generic.h, be32_to_cpu() is available. It is
expanded to the following expression in
'include/uapi/linux/byteorder/big_endian.h':

    * (__force __u32)(__be32)(x)

This commit replace the ad-hoc endian interpretation with the above.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index df16a8f4ee7f..a2d6d1d1ec2b 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -876,7 +876,7 @@ static void ar_sync_buffers_for_cpu(struct ar_context *ctx,
 
 #if defined(CONFIG_PPC_PMAC) && defined(CONFIG_PPC32)
 #define cond_le32_to_cpu(v) \
-	(ohci->quirks & QUIRK_BE_HEADERS ? (__force __u32)(v) : le32_to_cpu(v))
+	(ohci->quirks & QUIRK_BE_HEADERS ? be32_to_cpu(v) : le32_to_cpu(v))
 #else
 #define cond_le32_to_cpu(v) le32_to_cpu(v)
 #endif
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
