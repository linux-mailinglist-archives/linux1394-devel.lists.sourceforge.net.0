Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NHuH3SyDWpy1gUAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2026 15:09:08 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E94F58E7ED
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2026 15:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x2eQx+aLvGwmLihjTuWi8PUut2s0DuplhmAaxzHFij4=; b=S2HAG9GrIKHUPGXu4NdDIXFb/U
	qjAs+ncL7mxckls99N4iF+qY09QTtYtfKaFJzMSx3ZL4okkAJzJUxLNyP4lm3VwzXYg4UJJXiIurK
	M+2/nxlw8D+wWtlyapXPSf25ytS0MMu6c3d5o8uH0V5DQOqCEYUew8L+rvGHbS/TM0Fs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wPgfP-0002Tu-6C;
	Wed, 20 May 2026 13:08:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wPgfN-0002Tj-8H
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 May 2026 13:08:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ir7HtyxzOslAp60Q1C5FWTgGwsE8RMp3g8qREvvDC6s=; b=CbuJGa7rrZZlyUtga9TzYuDp2L
 4PvRu4ZrhexouxA+//VVwsIXdBfCNgcRH24iTs1emjcGj+gpO4XVOP4A7r4jqiX8h+qsJh7yDbDV/
 xDAKAW+VN44UTfo+Bjw6BGyGgthW3NoIRBPco4F4MeXkPJe7nJ7h1T0wmUaWCxtRZnI4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ir7HtyxzOslAp60Q1C5FWTgGwsE8RMp3g8qREvvDC6s=; b=m
 QBdzQM9i44EBnTr9UyAGRUMJ3yLSLnnYY5dnBeOZnnzJxKk5toWoTQlvBWAr68qqogy88tVokf+ov
 /8cHlLnvE8RNICnXf8y3kOTGrdCnnC7J4MfV+KOZgJ8WCr4FTRUoXFJ0pmSXWx+PaDNXsjEXfspxK
 n3fj7ntIFLkIP3/M=;
Received: from fout-b8-smtp.messagingengine.com ([202.12.124.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wPgfL-0000Ct-37 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 May 2026 13:08:53 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.stl.internal (Postfix) with ESMTP id F40FD1D000D9;
 Wed, 20 May 2026 09:08:45 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 20 May 2026 09:08:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1779282525; x=1779368925; bh=Ir7HtyxzOs
 lAp60Q1C5FWTgGwsE8RMp3g8qREvvDC6s=; b=l0f93u5nuv1yr/3NhEzUatX9IZ
 zpSR4GeiUR2+Adg9++EfgVIjdZGbhE8YkaBLBOYZU+AoupszsNKCnmtbMqGJs+OR
 QKxUGhUKWpBenFKclQeE1f5IBgIg4P3IHLnDhMZqvFcDYiOs08bGI3ERXbtpc+5i
 zCBKmdaUl05b1OmlZHNCwaae8zHpscxObniaZrEYTAsD/Bsyr2uYoK+EOotXmT/4
 ckLFeyQ6KOj6EHkAZgkM1cBBhQ01Se8zz4gYo9R5qixczk5oMPWsBhMzPsNQHO2S
 wp6gvRvnkMt++Q/mKgrm1p49NlvQ2zmydD1vlzBfDkehxCvJXxyAzc8+uIHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1779282525; x=1779368925; bh=Ir7HtyxzOslAp60Q1C5FWTgGwsE8RMp3g8q
 REvvDC6s=; b=g5uhosn3FLgB00oSYDn4ErC+Xe6B/vKAsnS0ztUMp+OpcgPsr5J
 Nl+RX499A7MIvBEsaXsqZE2DGAmX+Jd6EHWy+PRnr7fWWQrb7mtiaUG0aQ0NpdaJ
 JS4NrnSU65CQg0HybBSf6lrzJIvkGowLKxXl37/WwtNa1GEBBAT8JuvSKs33iHv9
 M60jYBCroKhAQxnJeUkPcJkNaveBLLjxjIDhYpkYgJIz39BpNAThPGPA47K9r2gD
 REkc2/FX/W689f8THybCMm369SLQq15ehoMPDEVLOmOVYDdDIG8gRCjXBw0v3sMY
 gLqL+Wwlidmcd5vnpAwYoFmV++7WlDptccw==
X-ME-Sender: <xms:XbINarVo6xn7sGt554-c5UfejSGAIBCPjyo89LjSC4rNZofksKfWjQ>
 <xme:XbINahh8BC5moNqoJYB-inHx-gQPX2zRG0U_fXGnm8geTAj9mGgHQiIfiUCmttdkw
 3kvBO3KF3cAoLAkvY-zvHPs1RdXE1dMa4DEa9N-y5KZLqIueySfUsHz>
X-ME-Received: <xmr:XbINau_jTL8yzMIo7i1v7GwSXjxI6NAr35gI2hiepruSRsXiTt9VQDGx7hDS7X2VK6N8NaaJmC9VqgxRn_X8VppqLTz1i1wJAAC318rjVw4O>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddugeegjeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehjeeile
 ehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelge
 dquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthho
 pehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:XbINajCycYjmogKGu9siCiY98pECSJPXn_XzCPdT4zXTgJJbimWLPQ>
 <xmx:XbINajKxVP5NYFCzgFFgE87OhrqtOqwFs0AZF-HM7cX4kjfHIb62uw>
 <xmx:XbINaulVLMmRCniQ63II_hH1Jjvemp1ljnFHKUuWSqe3HILHjNZnMg>
 <xmx:XbINapHyWfIfGAuDOX_rvHEToqtaRX_OV_VdNzyVCSOPHTuvdSFdNw>
 <xmx:XbINarrY54SSZR1meQui3vcZFxGRpIV8rgaWJsYL-Sor8M3FenkGa8qD>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 May 2026 09:08:44 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/3] firewire: core: more code refactoring for cdev layer
Date: Wed, 20 May 2026 22:08:37 +0900
Message-ID: <20260520130840.629934-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Some paths could still be refactored to remove redundant
 paths after the previous cdev layer refactoring patchset[1]. [1]
 https://lore.kernel.org/lkml/20260501135823.241940-1-o-takashi@sakamocchi.jp/
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1wPgfL-0000Ct-37
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
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,sakamocchi.jp:mid]
X-Rspamd-Queue-Id: 6E94F58E7ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Some paths could still be refactored to remove redundant paths after
the previous cdev layer refactoring patchset[1].


[1] https://lore.kernel.org/lkml/20260501135823.241940-1-o-takashi@sakamocchi.jp/


Takashi Sakamoto (3):
  firewire: core: minor code refactoring for case-dependent parameters
    of iso resources management
  firewire: core: rename member name for channel mask of isoc resource
  firewire: core: cancel using delayed work for iso_resource_once
    management

 drivers/firewire/core-cdev.c | 29 +++++++++++++----------------
 1 file changed, 13 insertions(+), 16 deletions(-)


base-commit: 8208d94f149a53311ac7687c051cb3a6d58063f7
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
