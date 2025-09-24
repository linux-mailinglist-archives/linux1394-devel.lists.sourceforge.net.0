Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC87B99FBB
	for <lists+linux1394-devel@lfdr.de>; Wed, 24 Sep 2025 15:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MbfxnggIL9z82QQNPnmiY2uFWgDv/CIw37SNc74A+Ig=; b=bzJVC2EFWxHT3mtq2YfVewa4s8
	Xqkpv89D1ycviOP6XAYjWCVbmGY6HOpEyg3CvEvpECcZgqlyR171Ev3sxJ1UblgaRicrVjjmGpsiJ
	JfAsPLt/hoOPtvxnNiiNfU1SCM++Dd8OGHOLljf9Q07riNKG1McbbLaH7bV7g23vhjeM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1v1PHk-0006xY-BR;
	Wed, 24 Sep 2025 13:11:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1v1PHj-0006xO-4q
 for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 13:11:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wYx2HdEIXgFlbgpS+qiqZSNU/sf04pXjiGxuBrpjJ/Y=; b=GgBqLYHunVw9C5YWzUOCfpIBZk
 2+UnFzcv62gy9roDYcKvJKaN3EBC5kXY8lwxe2UzezzRwTh0gOhMPtWiKbGO+KQHeSRJaYaYQ76oC
 1Ysr4edGnT+SPt2mD6jic8Kmc7ycRB/A1mkNcdHGOMrYwzELwZywvh0yZLqyoq1rVVOo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wYx2HdEIXgFlbgpS+qiqZSNU/sf04pXjiGxuBrpjJ/Y=; b=l
 4pDVstU6+BQZvGagxSO+FT4KDjBk8bYVwpmksXUMa3AMZugvTf8dL+rdzO2OGRYUy8/tTofe1TQOs
 UuhO/QGDWdOyO6YlPEfX5z0fOaK2aMEIPSr9xa0/pRPdBQdDXwH+w88JvoDOHrWWErWECsbVVxd52
 3WPucJ0HLhL1q0D8=;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v1PHi-0002pY-It for linux1394-devel@lists.sourceforge.net;
 Wed, 24 Sep 2025 13:11:51 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id 12602EC00D0;
 Wed, 24 Sep 2025 09:11:45 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Wed, 24 Sep 2025 09:11:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1758719505; x=1758805905; bh=wYx2HdEIXg
 FlbgpS+qiqZSNU/sf04pXjiGxuBrpjJ/Y=; b=BvMnjJdASXv6BaiiWFBTmO6GwU
 bcpPYuN04WJUVwAZoqo8wqXckpVEM7uNInUZXTEPTskz0NqKKc+jfjfZloCiFOAG
 WRn20nXWRT6D9/78ufRYhObE4ktHj+JKsUEn4cfQeqFTGM3pyx9Xr7xCUrjFKOSW
 ZOPpu6T06VJzQ+/QatFQpdYHvKL0AUrVIJsJC3w5/6SInGR1ZrzDBncjVryzbPpr
 NSzoWc7GFJtNOtRC2RSjOFNA1jI0G3M+fA9LYxkMpfB/oF29Om5Lv5popct8aSLk
 YPw3qLurVjkxxM0NFRhtoQrORz2LX8mHdW5uANZXwXNJPa8lMWFucagh8vKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758719505; x=1758805905; bh=wYx2HdEIXgFlbgpS+qiqZSNU/sf04pXjiGx
 uBrpjJ/Y=; b=hPcd+TMKtvHJXz/rqV78GS5RxZYLoSWbHdk+HTzaAgmkSbHL+jU
 PXt+1R3Mxiic1WUmLm3vyGHpdAzSdBDT6s1WUXUqVeshcDh5pKZjt8QpEUwk+kmv
 ZsQ16Dbhpi6kkILsKbyau7icpETczYboiVI7qYrrR7T6ou2ONtq0omSiIhB5r+dO
 oODfisje/h0JBiSJKL30L1QquuMWE2tt8nEbv2RdnfWqTyp69PdMobl5JdSxi85q
 TK0j776ExdtPUmHsnHfGfgIMMLs+rXF4ayqr47TVRLO5aZaHjZGDYoGU/Ra3YgSC
 +2w6yTyiRVqKpZdPYMmEYZATHUb5zZENApw==
X-ME-Sender: <xms:EO7TaNCiysv2pVwt2WetTjSSLdo_5FFmktvGhfFm1tsOayBFUt7ydA>
 <xme:EO7TaDS2GDTpSgK459gTze8fEhSlupR9sLRTcev30qdU2iZ0zeqLK4DZRYT79G-Nd
 zsU8Qbym2-g9ls_Wd0nt-DzT_Aj-PS56mRYRpeMVN0TlJ_oDj9JCZXj>
X-ME-Received: <xmr:EO7TaLrHidyGsRsFVgEwP8TeT3MBswlsi6O79TBlPUIHRnbbtYc6ctmsaPuI2PZYz2JmeSOj2RvOsixhOHPk7SD0B4oF8rCQUtSnfjVorvVK2Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeifeeilecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgefgheelheejieelhe
 evfeekhfdtfeeftdefgefhkeffteduveejgeekvefhvdeunecuffhomhgrihhnpehkvghr
 nhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphht
 thhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqd
 guvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohep
 lhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
 eplhhkphesihhnthgvlhdrtghomh
X-ME-Proxy: <xmx:EO7TaFynJCZc2PqLjWgEGcAWDhyz8Nz_CZx0voGCnaqNYgA31sZCMw>
 <xmx:EO7TaAL0mqqaanDfvBPfffjNoSmezNwttM1f_a24Ca3RknDttuth0w>
 <xmx:EO7TaHJxOuy1WZqi2fKEC2GkqAwdz-NyrhFOVMdEB3j7pHAIMo4FbQ>
 <xmx:EO7TaFvH0PVyz9RmXqESAojjW3MdhepkXlRabjZcPuPaxiYZ5M0Vgw>
 <xmx:Ee7TaJqmSD82YNegRS2wXwLG7Scgyo-oO6CvhBf1w0ln5vMyOk4fioWU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 24 Sep 2025 09:11:43 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: suppress overflow warning when computing
 jiffies from isochronous cycle
Date: Wed, 24 Sep 2025 22:11:40 +0900
Message-ID: <20250924131140.261686-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The multiplication by USEC_PER_SEC (=1000000L) may trigger
 an overflow warning with 32 bit storage. In the case of the subsystem the
 input value ranges between 800 and 16000, thus the result always fi [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1v1PHi-0002pY-It
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
Cc: linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The multiplication by USEC_PER_SEC (=1000000L) may trigger an overflow
warning with 32 bit storage. In the case of the subsystem the input value
ranges between 800 and 16000, thus the result always fits within 32 bit
storage.

This commit suppresses the warning by using widening conversion to 64 bit
storage before multiplication, then using narrowing conversion to 32 bit
storage.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202509170136.b5ZHaNAV-lkp@intel.com/
Fixes: 379b870c28c6 ("firewire: core: use helper macros instead of direct access to HZ")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 7f2ca93406ce..2dd715a580ac 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -30,7 +30,7 @@ struct fw_packet;
 // This is the arbitrary value we use to indicate a mismatched gap count.
 #define GAP_COUNT_MISMATCHED	0
 
-#define isoc_cycles_to_jiffies(cycles)	usecs_to_jiffies(cycles * USEC_PER_SEC / 8000)
+#define isoc_cycles_to_jiffies(cycles)	usecs_to_jiffies((u32)((u64)(cycles) * USEC_PER_SEC / 8000))
 
 extern __printf(2, 3)
 void fw_err(const struct fw_card *card, const char *fmt, ...);

base-commit: 19e73f65940d3d3357c637f3d7e19a59305a748f
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
