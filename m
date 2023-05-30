Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E978715BB1
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 May 2023 12:26:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1q3wY1-0004Xp-Tl;
	Tue, 30 May 2023 10:25:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1q3wY0-0004XN-DJ
 for linux1394-devel@lists.sourceforge.net;
 Tue, 30 May 2023 10:25:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AGk4n3SGiqeevpI9FxzEEYvh1uhlOZ6fFwDSJrqySoI=; b=ULThXy7/AAhVSwYI652UmXJT0g
 NyJoREFST6dOOEAy0+EloNxe5OAU/rjklPXKFWOuG6IgmcA0bxkifIyiKwq23V1eH27IstpI9ckno
 xyKEW3FbnMe9UZMpimLZQMl5oD2nlAWxcZV7OeqYp1/23aAdZf5hUWiw4utHFDVoCNwE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AGk4n3SGiqeevpI9FxzEEYvh1uhlOZ6fFwDSJrqySoI=; b=g
 ahoRLdwAuvqpBc+a+UOZlgeKc19Opft6hT7i0X6ILdwnlHD9EanArXqGCnXNyl6PyY1ESjW4Ruba5
 p8NsQBTLxJk3fETbFRfR1UTIyyeTbIxQLHD/zihX5VJp6/r2REc5IGJLf0bW2ur2lZj2OgTugzQMc
 2blzDwN08ByCSGC0=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q3wXx-006TRE-Cn for linux1394-devel@lists.sourceforge.net;
 Tue, 30 May 2023 10:25:49 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 040F63200932;
 Tue, 30 May 2023 06:25:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 30 May 2023 06:25:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to; s=fm1; t=1685442337; x=1685528737; bh=AG
 k4n3SGiqeevpI9FxzEEYvh1uhlOZ6fFwDSJrqySoI=; b=gQDPuNKfdOUu5CSOsl
 jQvrCmYuJsFVBba1N1uuGvjkTD2+tQyB9XgqzpmI+bgmS14CvPYlCUYFJjaFDNs/
 nb4sL/s3mENrVX662Ss8eNTAZbJ6KB/0yNg7GipWP7ylUc8CGkmxrmiWAvcosWml
 UdPaXazdZUg/lQ9VkhcdESe12kCVp0So6vZdgwMSOSnuKkF7AaU9TrZ6IAwo+2h9
 Gvqtex5xxu5WRwXXZKwa+tN25W00fdNbEj/GnLKEqmLKXLri75nWMiozKB0bKHaN
 4dAMDni5NukN6P1PzBGPK+43T2USUj4JYq3WP6gUd4QispltOVNpONRc0IJXFWCp
 r9eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1685442337; x=1685528737; bh=AGk4n3SGiqeev
 pI9FxzEEYvh1uhlOZ6fFwDSJrqySoI=; b=jBjodJHRRWGYQJ29mNkKiCxVkM5XZ
 CN4LUSzDeee48EbKHRI9Z/RTxxGGbij8Ab5qOhdDOmlxUj+twVOGwSHhtgRvAUn3
 4F4ojTu9xq1OASlB6ypq2twFUT4EwSfPA500pCV/YxEp9FpL+1DRiJwDzZc/lV7+
 DwTT0lxStQZfUQqxWdUqfc9320zdMaAN/5ec9EBAtmtsFInxY1TwXsfoF4uFiZrY
 00sWUApbsLnK3U9YTDwrZxim64VtgeEgw+caZJWnJKwpLcu2fhSxvVP+p7Bjjeq3
 kEC156W3heAeAsDr4HJsWJI6NGSuYgQQyXtueranr3WUpN0HvtlSpjCmw==
X-ME-Sender: <xms:Ic91ZNRGMx7s3ENJGaFX-Z3hEgr-4OacRMGTuJ6w3sBaf16pF64jhQ>
 <xme:Ic91ZGy83VgLQ2UWOF4_ekeRUOY9ZIET8caBiiytdplZM_dMlHwgSzWY0tR7hc_XB
 nepoaexn6pcKGvT5Js>
X-ME-Received: <xmr:Ic91ZC2aomCAez96-y2xa9rd9LcjjZAhQjiRfIBykOuCm1qJxAd8az__e6JNTjEo4F022XuWkwYnHYHNsHoyIzOjb7j9u99mLSsrA6-68FhWVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekjedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Ic91ZFB_H6iaHxNb1R7VCWpGF9wcIKRvhaP2yK1S7XLOGYyPmSQSxw>
 <xmx:Ic91ZGjZztvfb3aAX7Rjy8tCPAuezHs2vfveKkcWoDGHMnkMA3G4Lw>
 <xmx:Ic91ZJqdLItLLKWRWbcXWLfEBqinPyxm-slEqZBvJ5UYpPBVgR6Agw>
 <xmx:Ic91ZKYkCW7yaS_SzfVDTcm1YWNUynVB-53lx_srjr1_IajY2EtYmQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 30 May 2023 06:25:36 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firewire: fix build failure due to missing module license
Date: Tue, 30 May 2023 19:25:32 +0900
Message-Id: <20230530102532.56386-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The added KUnit test has no MODULE_LICENSE even if built for
 tristate. It brings build failure in linux-next integration. This commit
 releases the test under GPL and fixes the bug. Reported-by: Stephen Rothwell
 <sfr@canb.auug.org.au> Closes:
 https://lore.kernel.org/lkml/20230530122450.1603af75@canb.auug.org.au/
 Fixes: dc7c51638f46 ("firewire: add KUnit test to check layout of UA [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q3wXx-006TRE-Cn
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The added KUnit test has no MODULE_LICENSE even if built for tristate. It
brings build failure in linux-next integration.

This commit releases the test under GPL and fixes the bug.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes: https://lore.kernel.org/lkml/20230530122450.1603af75@canb.auug.org.au/
Fixes: dc7c51638f46 ("firewire: add KUnit test to check layout of UAPI structures")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/uapi-test.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firewire/uapi-test.c b/drivers/firewire/uapi-test.c
index c6ebf02e3d45..2fcbede4fab1 100644
--- a/drivers/firewire/uapi-test.c
+++ b/drivers/firewire/uapi-test.c
@@ -85,3 +85,5 @@ static struct kunit_suite structure_layout_test_suite = {
 	.test_cases = structure_layout_test_cases,
 };
 kunit_test_suite(structure_layout_test_suite);
+
+MODULE_LICENSE("GPL");
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
