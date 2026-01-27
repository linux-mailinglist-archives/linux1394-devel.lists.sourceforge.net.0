Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLEFKYE9eWkmwAEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Tue, 27 Jan 2026 23:34:41 +0100
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F1A9B1C0
	for <lists+linux1394-devel@lfdr.de>; Tue, 27 Jan 2026 23:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/CzT/j30OnaywG6T24Kkl8lMCNWX2i+GmrqBNoeNIqs=; b=Y2u7Md2cd2hhcK34XHoCdeTQBu
	Wau6pG0bmlyiP16f4exoVakSIYMKXmvedazQpOWaQWWZ1l0073sDcXE709vdz4l3AJdjF6n1+nJ4x
	wKls75l1euBmLkaTw5higCDx72J9OsyrtDbZo99QAAe8pmqF2oHyywtzZ5JqQn8UGDXo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vkrdj-000300-KZ;
	Tue, 27 Jan 2026 22:34:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vkrdh-0002zp-Pr
 for linux1394-devel@lists.sourceforge.net;
 Tue, 27 Jan 2026 22:34:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZLdnLf5vx9xJmO7CqVhMxoDPL4AY1OQZUyB28WIUVJo=; b=dugVtkgYyps1PeMGXnUfG0eSVz
 2zW7TnFJJLxTDfRS3T5RzILpcK0epGfkD0TOEjV5kBVyk5KKovKAlAQpjkdeJKhgvUlfb+r36mtPf
 OaQZwBrtgYQJy5YXnaJCW9k63uLXDenUlzu9fwzl0dWeOw7q0+WwxvA/D0EwZsvBEHPQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZLdnLf5vx9xJmO7CqVhMxoDPL4AY1OQZUyB28WIUVJo=; b=a
 o8Qkt7ptACYYGHdiuX4sVl07VxZMiBoZCE9wxiE/Vi4n6UVoUCdoNsSHl443zZNqRhcollNus2kx+
 lQ1uwR8wkdoq/4gX3LPQ5EWdFPyvCEbFbMLdj2L0eoV1qFFSsyrvO/ct5Tfk2V7BCTER6M3B1IBeE
 Fs64wxZPdpA57PHw=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vkrdg-00062k-GD for linux1394-devel@lists.sourceforge.net;
 Tue, 27 Jan 2026 22:34:25 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.stl.internal (Postfix) with ESMTP id 50B181D00113;
 Tue, 27 Jan 2026 17:34:18 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Tue, 27 Jan 2026 17:34:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1769553258; x=1769639658; bh=ZLdnLf5vx9
 xJmO7CqVhMxoDPL4AY1OQZUyB28WIUVJo=; b=H/UI+WBjdItgV5ZiuckV7xgect
 keUWXSfHbwRnRoygu1mgLOnKMz2HadCL2zRNfU0MJbKvBZNNqO2saaytLUzCs4US
 cS9XysTnKTHQ30pGl+BhwN/TJIw6RZwqp/d2qOyOzp4+2XHglNLrTmyBpPF2rqJC
 1e5IEJEbTw8ljOhaCGpJaH5Hx/j5mqsglJUTvPX1++1+P6tP7Rpni+zR2RFyD/Ee
 mxk2wovZqvrXl5HioALQ/fPs7+C/VmDpt+Y5lAHnxeGdS8RVmXlZm3oxd5QVNgUP
 jNavHy8GPlgVChUlxz0KwW1UwISev3e3XQAqY/MA2NaObZzEYo/uMOrc2d+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1769553258; x=1769639658; bh=ZLdnLf5vx9xJmO7CqVhMxoDPL4AY1OQZUyB
 28WIUVJo=; b=mLx0Fc1shEw4nVIDALO1ARM+g9zH435GYcKJ8LHSriHPknuP1Fq
 UzcpQL4U8LyqhBSgNht50TQyuSD+esUw7wvKD57GVOUlTWpHFfTVnpuGZmNxa9K2
 RATUYH4Og6SGtrFpVpGWzK+CmFH1VQMu+glacDw5oZnSWa512VbltCN68Xykf6P4
 BhETU/b+aN9LuFlLJS9d2MWKKfcMv9pLNP4rGt7KvklH9YmTRgLgR8A4P/LCmGy2
 BboyMMrxYmDpQsiWio8Lob4TcH8xr3bLBLu29tWUeT4awRDYYR+6tAQXpoOY9wmW
 15C71hNmT7eT5J9qy3mCzXoh/kRODHGGmzg==
X-ME-Sender: <xms:aT15aXrSFHbwqDBYk4_oyPoLCV4x3-JEbLHd8C0OL2ja1XzAyJohDw>
 <xme:aT15adGHBR9ehPo-M7zGOSFFxfKFWtD7cPIWESzODj4T7YA2mNIVe-oTPxsS3dAEK
 sgN0T88KYYA5fWfnyxvZjZD05_wIQRXqQ2kTFW2tO7GuEHYpxq6cQ8>
X-ME-Received: <xmr:aT15aXut9yew4b6aBGLktr6sFJGUryDVjw_d8N_kIhpPmlQ_EwTT5YUb5dm0SNwPx2y5RqbXDs_qoOMI_1UHJfGnsxIpS_14faup-Q01VIMn>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduiedujeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcu
 ufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqne
 cuggftrfgrthhtvghrnhepkeevteefgeduheffudfgtedvuedvjeeviedvfeelgedvtdeh
 tedvjefggedvtdeunecuffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushhtvg
 hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehs
 rghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeegpdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhu
 rhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvgh
 gvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshhtrggslhgvsehvghgvrhdrkhgv
 rhhnvghlrdhorhhgpdhrtghpthhtoheprghnughrvggrshhpheeisehouhhtlhhoohhkrd
 gtohhm
X-ME-Proxy: <xmx:aj15afVF4jyqRelSNxafwXSLreXGQDE-HgLSi83VIVSNXajXhBbdMw>
 <xmx:aj15aTF6IM4oxxkSn-isGeJdoIJqOfSecsHIigubjoVPf6fkXi_smQ>
 <xmx:aj15aR03aZohNJ-9NUVH0LjK-Gmzv2_XMPr0h7A8sJmE0SlOjSXBqQ>
 <xmx:aj15aVNCInBK_RoKLsQ_RycTPqPkGWJpFv4e-QgtSyv7fyZkGgx2ug>
 <xmx:aj15aRmR8MiKGBB0TNzq0Rx5dZm7j1KwD_x0A22H7-bvruY0Mve4SNUo>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 27 Jan 2026 17:34:16 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: fix race condition against transaction list
Date: Wed, 28 Jan 2026 07:34:13 +0900
Message-ID: <20260127223413.22265-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The list of transaction is enumerated without acquiring card
 lock when processing AR response event. This causes a race condition bug
 when processing AT request completion event concurrently. This commit fixes
 the bug by put timer start for split transaction expiration into the scope
 of lock. The value of jiffies in card structure is referred before acquiring
 the lock. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vkrdg-00062k-GD
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
Cc: Andreas Persson <andreasp56@outlook.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[outlook.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	TAGGED_RCPT(0.00)[linux1394-devel];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: D3F1A9B1C0
X-Rspamd-Action: no action

The list of transaction is enumerated without acquiring card lock when
processing AR response event. This causes a race condition bug when
processing AT request completion event concurrently.

This commit fixes the bug by put timer start for split transaction
expiration into the scope of lock. The value of jiffies in card structure
is referred before acquiring the lock.

Cc: stable@vger.kernel.org # v6.18
Fixes: b5725cfa4120 ("firewire: core: use spin lock specific to timer for split transaction")
Reported-by: Andreas Persson <andreasp56@outlook.com>
Closes: https://github.com/alsa-project/snd-firewire-ctl-services/issues/209
Tested-by: Andreas Persson <andreasp56@outlook.com>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 7fea11a5e359..22ae387ae03c 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -173,20 +173,14 @@ static void split_transaction_timeout_callback(struct timer_list *timer)
 	}
 }
 
-static void start_split_transaction_timeout(struct fw_transaction *t,
-					    struct fw_card *card)
+// card->transactions.lock should be acquired in advance for the linked list.
+static void start_split_transaction_timeout(struct fw_transaction *t, unsigned int delta)
 {
-	unsigned long delta;
-
 	if (list_empty(&t->link) || WARN_ON(t->is_split_transaction))
 		return;
 
 	t->is_split_transaction = true;
 
-	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
-	// local destination never runs in any type of IRQ context.
-	scoped_guard(spinlock_irqsave, &card->split_timeout.lock)
-		delta = card->split_timeout.jiffies;
 	mod_timer(&t->split_timeout_timer, jiffies + delta);
 }
 
@@ -207,13 +201,20 @@ static void transmit_complete_callback(struct fw_packet *packet,
 		break;
 	case ACK_PENDING:
 	{
+		unsigned int delta;
+
 		// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
 		// local destination never runs in any type of IRQ context.
 		scoped_guard(spinlock_irqsave, &card->split_timeout.lock) {
 			t->split_timeout_cycle =
 				compute_split_timeout_timestamp(card, packet->timestamp) & 0xffff;
+			delta = card->split_timeout.jiffies;
 		}
-		start_split_transaction_timeout(t, card);
+
+		// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for
+		// local destination never runs in any type of IRQ context.
+		scoped_guard(spinlock_irqsave, &card->transactions.lock)
+			start_split_transaction_timeout(t, delta);
 		break;
 	}
 	case ACK_BUSY_X:

base-commit: 6b617317e5bc95e9962a712314ae0c4b7a4d5cc3
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
