Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEwHKOvQ8WlrkgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:39 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 259BC492043
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Zx0t2GQlo631urlGZ2lZIbChAHNkyDY3oI/c8l4I/Ew=; b=PQ/A9vvPALapDtEZskWv35FKcv
	Z8LbjXMNlOlneDMQyFa61f8XbAuCnt4iSc2iK27hPNiN/SnstyQ80qZm43/ctAF8EX9mXR1wUGZBD
	uzZ6vzURGx9xPzQ80eMT/ZkGojRNWByPW30cBOilQSTFkVuzaDJT+mH++zVgP/BdKQ18=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wI1KP-0000sx-96;
	Wed, 29 Apr 2026 09:35:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wI1Jy-0000sH-1d
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zXOt2yyjXTNYeJVeExLW9+PmfTmsWsZyA8QfjyfCOO4=; b=ISCefPJuqEaSfYHhRei3BrD+od
 gJwduFyu6ucMQoPM+Vd3AT2NVVSSzWHAEMw4YkomoUPsrxoXGYmgV6RA+sgur6VySX4h7H/cAXEqU
 8uJSr78nQtJsVHeRlq8v+w7Yq4Uu78+gvgqIBNgEgu9BIsE8Ss7nQtYxE4NS/B6/Rz+8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=zXOt2yyjXTNYeJVeExLW9+PmfTmsWsZyA8QfjyfCOO4=; b=T
 ALDADtZ4jJqkdzyFD5M8aEiPMCZKmC0JrylT9sbXQFlIiUNixLQs+W4L8QQdUrEIedMa5U4Yzciz1
 YkpF+xZjqKKj10+7A7B8ezZglXFw1k/R4do7s+F1yTG37SdDi4CQDViq6ecFyQ77QqwGoEQy9BW4a
 r5JICQfyv7A/bc+0=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wI1Jr-0008L1-D1 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:01 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.phl.internal (Postfix) with ESMTP id ACCA2140004E;
 Wed, 29 Apr 2026 05:34:53 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 29 Apr 2026 05:34:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1777455293; x=1777541693; bh=zXOt2yyjXT
 NYeJVeExLW9+PmfTmsWsZyA8QfjyfCOO4=; b=tNyEcO+KSyn4+lEJrKUcMgg6Qw
 56fGM5neKxkj09wBu96H8BwC2gDXXsx+GSxVeo2vtw2N++LFjrpMdnFOs084IurJ
 twzQoZ3/rr1aqAGVVlgh2+N5pHw0OmY4ukbUB2ty8+d5R3NTvtJTCjphbpSdjYpg
 vZ2in9lagQwqN+wD9vJshsDX02Zh2Mt0XSF78kKIUBdbAbUxZtdqkk8op5d/DYj9
 krkSaiepDQpjTb7FvoHPe8TGfpg6h0lJQZtNqxSs6EwPSlHARtbH1MY20rRnfEAM
 yVd70OgoV+beUSXVWXLsAWQOG0DlgMV0OrCZ9/P+diO0VnQ/ho4qDX3TQjlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1777455293; x=1777541693; bh=zXOt2yyjXTNYeJVeExLW9+PmfTmsWsZyA8Q
 fjyfCOO4=; b=dbiWWeQn+QX2aUEfpBHGCfUcjJxrnrgdgT2wWvfXbtMruFuTDTa
 0ThGRFLhk9d3U0IGLFtuJ1rOWZBeQwgqQ5woNgq8pz97X2B7AwART/SgEzNpJrSy
 oY8oukvbTZda/q/SaJosuONP43M1ntFfksa5/g0EzjONcd5Wz8ciEaWLk8keObj7
 kKVdvbVBBoFMzoBLNYhK5nELo8uEkM+h+HMNXVkdAB86s+PvMx7Bn0PZN7W8/MYU
 RfS5jjeM5Ch7qjmmhn0FJpOSJ3NLWaNpNtsRaONbH2i2zViyIm++Aciz3E8BgOIR
 SMXGaJrCvCXwgEzL8UtOMz12CtkvTudywTQ==
X-ME-Sender: <xms:vdDxaUjZXU3JOV1PvAS-lpO_bOCEYzHAzd6RrItjFGST9aHdBGaFHw>
 <xme:vdDxaa1BrNkwFxPQKnKs2gVbWAcPmVi96rJaE--wRpYMyR4dRloYby9SHbiSAWJlx
 6xNAkV0dcsnFLNUsxclbXovqEpW5ZJYiu3xOdgJb_SlJwUr_RJ2w6c>
X-ME-Received: <xmr:vdDxaWiaFrD6WPTBpPAV6kzvUI-1JSYZXvVnhzgdXhX2TwFEzMl2Gowi3MnYA4sYmjNngxrXZ7mY6hVXKJrIh_2YeSlzuEWEAW7NbuXhGNkuwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekgedtlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecuogfuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjug
 hrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfu
 rghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenuc
 ggtffrrghtthgvrhhnpeefvedtueevudekkeeutedvtefgleffjeefgfeugeekfeejkeeh
 hfetjefgteeghfenucffohhmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvthenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeegpdhmohguvgepsh
 hmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhs
 rdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohepshhhuhgrnhhgphgvnhhgrd
 hkvghrnhgvlhesghhmrghilhdrtghomhdprhgtphhtthhopeguihhnghhishhordhkvghr
 nhgvlhesghhmrghilhdrtghomhdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvh
 hgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:vdDxaSd8zx62_Dv8iyACleIbYHOSWW5aX3YZ-FNaYW-I0gKiCCHThA>
 <xmx:vdDxaRn6wVX0ZQEK8wmjBhVuNh0XP3lAMUaEQMuX3ymk6n5Jvvpigg>
 <xmx:vdDxaTvZgiIgfP-U1Je13uTlWRbzrFl1a6D-pE7FJBuIxURSh0XsEA>
 <xmx:vdDxaf8SWFD_Uklu-IHSNrmS249rtS_uNe8ZspjcuU_JE3eLEkwQVQ>
 <xmx:vdDxaRmX1LtfOsf3I955HJsnOSks7dYn1T3xjB9GR5X9J1aP0eeMInyx>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 05:34:52 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/7] firewire: core: separate iso_resource paths
Date: Wed, 29 Apr 2026 18:34:41 +0900
Message-ID: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, (Repost since lkml was excluded.) Dingisoul has reported
 that a case where the reference count of a client structure is leaked when
 handling iso_resource in cdev layer[1]. Fixing the bug immediately s difficult
 due to the complexity o [...] 
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
X-Headers-End: 1wI1Jr-0008L1-D1
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
Cc: dingiso.kernel@gmail.com, linux-kernel@vger.kernel.org,
 shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 259BC492043
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

Hi,

(Repost since lkml was excluded.)

Dingisoul has reported that a case where the reference count of a
client structure is leaked when handling iso_resource in cdev layer[1].
Fixing the bug immediately s difficult due to the complexity of
per-client resource lifetime.

As a first step toward addressing this issue, this patchset refactors the
existing code for isochronous resource operation. Userspace application
can allocate and deallocate isochronous resources on IEEE 1394 bus in two
ways:
 * FW_CDEV_IOC_[DE]ALLOCATE_ISO_RESOURCE
 * FW_CDEV_IOC_[DE]ALLOCATE_ISO_RESOURCE_ONCE

With the former, the application delegates the maintenance of the
allocated isochronous resources to kernel and obtain a handle for the
client resource. With the latter, the application should maintain
isochronous resources every time receiving bus reset event, without
relying on a handle.

Currently, both  operations are handled by the same code, although they
differ in terms of client resource management.

This patchset separates these two paths. As a result, it becomes clear
that the reported issue only affects client resource allocated via the
former method. While the actual bug fix is deferred, this refactoring
lays the groundwork for it.

[1] https://sourceforge.net/p/linux1394/mailman/linux1394-devel/thread/20260404110936.GA282614%40sakamocchi.jp/#msg59317811

Takashi Sakamoto (7):
  firewire: core: code refactoring for early return at client resource
    allocation
  firewire: core: code refactoring to queue work item for iso_resource
  firewire: core: code refactoring for helper function to fill
    iso_resource parameters
  firewire: core: split functions for iso_resource once operation
  firewire: core: code cleanup to remove old implementations for once
    operation
  firewire: core: append _auto suffix for non-once iso resource
    operations
  firewire: core: code cleanup for iso resource auto creation

 drivers/firewire/core-cdev.c | 285 +++++++++++++++++++++--------------
 1 file changed, 176 insertions(+), 109 deletions(-)


base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
