Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gD3jMUCs8WmwjgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:12 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF1F490136
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 08:59:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2tjCiVOKO8jWw+YtSIk1i12nfRTFu4Wp0RKE+xmMLi8=; b=IqSw9C85qRGSLVH0O1sgIEcb8E
	p5WNR3zS/q93cgLn2KTqqCQ/2fIPPIiH3Iz+kscYFrLQuGgU1tzZpbOsZf3CMRU2pwC7R2AjXEU5D
	quJf1Zsnwlpoual6at07LUa992Fdz29DEh7Itmlvl2b6XnRlxw3VXBuQoOrV1BOZMrEg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wHyso-0005k2-JA;
	Wed, 29 Apr 2026 06:58:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wHysm-0005ju-VV
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sKFPzNaFAgT+WjT9zuw/6vChUUGQre45E1AxOhUpB1s=; b=O+Y5UOrX971LkosX0qx8pm1xM0
 f5WFt4etSF9q04G3nefYYee8kkJ11L3799gHKlXtTQGg8W1U7skCEFTxQ18ARHzHflouVgfV25X8Q
 zyVlJFqORBMcg6PnkzCxbFJMUDAZsJUuDVpEy+5G0WcanWzTIn+aRT8SpNZR1olZFrwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sKFPzNaFAgT+WjT9zuw/6vChUUGQre45E1AxOhUpB1s=; b=S
 /weKpxXt7vcMzWCPQSIa9YE0NSn4F9oKmQcxc4OUhhEcEANhVXJMMGt4J0mcdhi6qFiAEJNosnlHq
 ivU5AnhADotRxIDuWT5fYTRlUk3G/keAZhnot9yqLVbseC7+3ql9vozRGrHh0RfDIDyR0dXSRrFl+
 LNSPajiRiXQi4Q/o=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wHysl-0004XC-Cy for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 06:58:52 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id A575014000CA;
 Wed, 29 Apr 2026 02:58:40 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Wed, 29 Apr 2026 02:58:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1777445920; x=1777532320; bh=sKFPzNaFAg
 T+WjT9zuw/6vChUUGQre45E1AxOhUpB1s=; b=YyMAUoC++E74U/ZGx25Ge8wQXG
 hvDbE6y1kB6YQoY6xgRJH6bjkr+aqmhdEl7kjcA6tPEbyQiCu6c5T8go8Xl+0w/4
 q8gQjvI+QsQm3/9oqKK2sVGNS9XToNMRhBuDOKsalktLgOU/a7++DoRiRgQXCxPQ
 cHIm+YfqokxvhD6xxO+GEV2BYup9FfhqyoesTt7ASxKMEoXbupA9jdS9oxrQImWX
 nkkmLUBeKnv/6IsrNr16SB2C2A1ahLcc5NQvWMvIfWqCe9Ipf3soGMMqLONgm0RE
 UAMUWUKKeNISslQZzRv/sud0m7Npvan6m6eC0Yp1HDU/Cd/EsmfrQ2XLfC8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1777445920; x=1777532320; bh=sKFPzNaFAgT+WjT9zuw/6vChUUGQre45E1A
 xOhUpB1s=; b=jS2c+P9kEaZhtiF9W5GWg4HooL0u3mvz4mu7diWqg5skuvhdnFy
 34VSWHeH3uXrtXkLLlCHMIPQMh2gdOJ1hUQ0oTJdGvtv4ujbTiydVGsQW9fKvp+h
 f1nnUyaG1j8khnyB6MMUmd6T1/0KrHoFkC3ycJ/oBJXf2N/M09TnhUS9AWl7fN42
 7DRNmHDPk3liWBg2KhDZqHH/Rqpqy4WKIKc2xLuYDOkZejMaolJL4j/yjlGZfA09
 RfsIyoA/I6+ipfCP9uqxW0r/hOmnvVY9HybObOM7gxdG6jaGg/L7AeoPbC/AgdJw
 hm3FWB4k4QLFMoQQm0SZ6WDgigRkoHzwdyA==
X-ME-Sender: <xms:IKzxafGYjweTY87h3aSCGfQnIhJ-47yRKPsGD-tyG-RAgTF4O2GW4w>
 <xme:IKzxaTyciuliWzDE0JZyA9Dimz1ECb2kXyxb2WF1eTheuMeyzzysFsgP9LP6-kb5K
 Weqc2KOqc4TuBb7MWb28FYavRlgEHewcZe9TUntUGfcTg2Y3bbQuoto>
X-ME-Received: <xmr:IKzxaeh1MDw3DTih-xCytJr5POLyy_bo3EUUK5SJaXE1wN22QABOcN76PqmUbWnp7E4CWUQEdhxQMG2q1tu62umaoABfZ8pW4Y-7dNmxLsdA1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekfeejkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecuogfuuhhsphgvtghtffhomhgrihhnucdlgeelmdenucfjug
 hrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfu
 rghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenuc
 ggtffrrghtthgvrhhnpeefvedtueevudekkeeutedvtefgleffjeefgfeugeekfeejkeeh
 hfetjefgteeghfenucffohhmrghinhepshhouhhrtggvfhhorhhgvgdrnhgvthenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepsh
 hmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhs
 rdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohepshhhuhgrnhhgphgvnhhgrd
 hkvghrnhgvlhesghhmrghilhdrtghomhdprhgtphhtthhopeguihhnghhishhordhkvghr
 nhgvlhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:IKzxaWwnO_U7fP4IzSO2e4be9cLQs8F7xJgMLUUQil6NwnC8FwEFCw>
 <xmx:IKzxaZJMjPlt2PemIzk8skP9V63e1I4sfsnEohzkILe3YLvWZiEsGQ>
 <xmx:IKzxaVRHsYo_Slc-3QkXIRdbrQ5F0K2mP6lNEg-psnwj3pat3LXmqw>
 <xmx:IKzxaZrg01obCN80rk1RguahH4bDvxNwyy70NBvEPYInh9F_lniQmQ>
 <xmx:IKzxafxuJ2TYR1MT-G0L2L98PXH55rwrhfFCeP4nHLZfMO1ICz1oh8KS>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 02:58:39 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/7] firewire: core: separate iso_resource paths
Date: Wed, 29 Apr 2026 15:58:29 +0900
Message-ID: <20260429065836.155820-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Dingisoul has reported that a case where the reference
 count of a client structure is leaked when handling iso_resource in cdev
 layer[1]. Fixing the bug immediately s difficult due to the complexity o [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wHysl-0004XC-Cy
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
Cc: dingiso.kernel@gmail.com, shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 3BF1F490136
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

Hi,

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
