Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 155BF842082
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Jan 2024 11:04:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rUkyl-00034M-Bu;
	Tue, 30 Jan 2024 10:04:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rUkyj-00034C-RZ
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jan 2024 10:04:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MOp/NPYsM+2ldtCEODCGojul6SWgm505LlBTScMMddk=; b=LgH1JCGqWL2OGs7qWLovnJMzio
 6+LhS7kiMNSdM81LRBFKZdljgjsCUKs8IZ7fr9nfOpRGi6Mwxy91+bAmKCqtT64zr2/HePZVdRthZ
 eWf0EJD3IAw+F4ZsTXWG41of0QyOeGvRlCDG//otAxnmDQqvcqqaXQ2nnWYFHJjrI4cs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MOp/NPYsM+2ldtCEODCGojul6SWgm505LlBTScMMddk=; b=Dz33/7fMmtsXGrj7eaJHLcLJrj
 zX45zxjr1lyQd6Av15ByONo2FnCKD10D2ZezjgTZKA+f4BPPBhBhktBeaWaTRHbUiLYHs2Jt+yiFF
 fd5R4O+24b9U4eEq6Q0ypx3XgyFZrtVOBru7UAmjfkN60GbdBUJuDD57+EgIkjbDru4c=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUkyi-0003KE-HA for linux1394-devel@lists.sourceforge.net;
 Tue, 30 Jan 2024 10:04:29 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailout.west.internal (Postfix) with ESMTP id 4DA973200B44;
 Tue, 30 Jan 2024 05:04:18 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Tue, 30 Jan 2024 05:04:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1706609057; x=
 1706695457; bh=MOp/NPYsM+2ldtCEODCGojul6SWgm505LlBTScMMddk=; b=B
 lnoyXUnB1EVXKFwwzZevYYGTDkRAco1bAjBdrpyuGemnCRCYTRCwHbfhmqU+LN0p
 kU8BFlr/4CAVwhk5BEpFoJP9r9J7Acv5Nv3lN+M5PLlEIINmbD84eW85WJ7cs5Eu
 NFV3AsMI/+4+fDCXQzUcYCfaaIfyBpESpFddWoqZeu3n+TTr88J/bU+ZcVC99Qir
 p0lQGv11XW79m71IHlHndONB4Uww1XA2QoAuDdHpnx+3JE8CBsPWU6oGFooSNk6Y
 1VIGhJz3ZFklghDBsBKcxXdaQX9j/8HaMBkBZyYHsHj2lV07jL8kKcqCmVwReDgD
 9snneCvz1OR2i/+/dOAyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1706609057; x=
 1706695457; bh=MOp/NPYsM+2ldtCEODCGojul6SWgm505LlBTScMMddk=; b=a
 2I/+iWEmMJuG4igywhCqlfSw0tG9cJs00z5KuHQhakW8JFmw0kEzkWa/kcnYi5+r
 WDqCbwIDgWB+QPG5z4cscv8yHNy/UFUmPp5js5vW7SAjUN8C+M2wiiPNCN0JrS6c
 cHzePfquNR408yCW4riQxwmQakoGeC9ywDvaxcnLbTgIddYPRq0NhijaZxp5PckL
 UVIJWARcPQJUm8bytlTEXFpvG6wmcgFs7omwR+mn8+xMcc2wDE5fTHb59g0RNS9o
 tzEyw6xdzO09LkxYpipb4UDR8ijpxNxhUgasUTz0VqQgEXAzKvFeTyihOIhErWMN
 iJWmJb5BAeOXZfgLNPdHQ==
X-ME-Sender: <xms:ocm4Za6nNUN_3c1CF5KNldJKpCPm71cX9OMvqTUAwZrrhhKHRzGvvQ>
 <xme:ocm4ZT7V3JIiRGsJDKMf9VDv6PLybrPX3m80jq1IP_DoINHWtcEK1NT4iAV6Pslsh
 2FZElUJght7WnLZOoc>
X-ME-Received: <xmr:ocm4ZZfXJED85smwRPFrD_xjKUkOyMBTQc9F8ay8AzW5zxZnXlSvNpYlztdw4IvcKBE1LSxjIC4GBhBHMq7Al2AJsdMx8DL8Lx52eAgyVrjD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrfedtiedgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:ocm4ZXLheF95n5djwWER7IOgxcwvsj9RFuvW_XSkMV4H26pTt3NpEQ>
 <xmx:ocm4ZeItYC4f6FlZ3Px5WXxVWM5XKdC98YE3cwe7Q8PjtqGsZ8W3_Q>
 <xmx:ocm4ZYwxa_FpvyCPavxQJKhPlU765Nbvn0Hwq-qsyHNKCCXwK7ZWYA>
 <xmx:ocm4ZVVVWnOOmxd2y46WHz5OnLQ7GaA-AJaJF0OUp6rlplwsQKipoA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 30 Jan 2024 05:04:16 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] firewire: core: correct documentation of fw_csr_string()
 kernel API
Date: Tue, 30 Jan 2024 19:04:08 +0900
Message-Id: <20240130100409.30128-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240130100409.30128-1-o-takashi@sakamocchi.jp>
References: <20240130100409.30128-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Against its current description, the kernel API can accepts
 all types of directory entries. This commit corrects the documentation. Cc:
 stable@vger.kernel.org Fixes: 3c2c58cb33b3 ("firewire: core: fw_csr_string
 addendum") Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-device.c | 7 +++---- 1 fil [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUkyi-0003KE-HA
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Against its current description, the kernel API can accepts all types of
directory entries.

This commit corrects the documentation.

Cc: stable@vger.kernel.org
Fixes: 3c2c58cb33b3 ("firewire: core: fw_csr_string addendum")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index 0547253d16fe..e4cb5106fb7d 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -118,10 +118,9 @@ static int textual_leaf_to_string(const u32 *block, char *buf, size_t size)
  * @buf:	where to put the string
  * @size:	size of @buf, in bytes
  *
- * The string is taken from a minimal ASCII text descriptor leaf after
- * the immediate entry with @key.  The string is zero-terminated.
- * An overlong string is silently truncated such that it and the
- * zero byte fit into @size.
+ * The string is taken from a minimal ASCII text descriptor leaf just after the entry with the
+ * @key. The string is zero-terminated. An overlong string is silently truncated such that it
+ * and the zero byte fit into @size.
  *
  * Returns strlen(buf) or a negative error code.
  */
-- 
2.40.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
