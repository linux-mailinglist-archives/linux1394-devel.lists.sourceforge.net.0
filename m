Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAA+NuI192nQdQIAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Sun, 03 May 2026 13:47:46 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 058734B55D0
	for <lists+linux1394-devel@lfdr.de>; Sun, 03 May 2026 13:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m3nibGIsZ2qLnNoU/OMNhMBEoNnSdew6rrlx8bK+t6c=; b=iCO3yrQCXHm4WovG8fcCU8i5Wf
	P/TEGSNjEigxpk5+EIMR06+xkYwhL9OoIx5Xll/WIH15j5mf+Af50ryUqj9KoCyyiykjcTL/nv3BL
	ETAnVyJANoS2jv1rcnRDa9O5AZOeUMXukpAM7IxEKpy3cxErpvUNSX3ZD8VkqnSNU2TQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wJVIJ-00024f-IX;
	Sun, 03 May 2026 11:47:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wJVIG-00024G-Fq
 for linux1394-devel@lists.sourceforge.net;
 Sun, 03 May 2026 11:47:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W4arkRE5GK9+N6tK8w24aJ+6aAwP1Bd8mclEUVoIkxI=; b=Q53qichur1OaFU8NegKgFHAVI0
 94Do0Oq4SBPusEZ5N7vIN9l4+WmDUQEYj5q6FRGmgoJEsg51C4z08tFftGYDEjUYkcBssJeSNicev
 2FEnnVU6LuESkuALxpj/okKYZKcLG+/qeWfUKUtlGPS5ltb+CyKsaptkKuZqL0Ey7BsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W4arkRE5GK9+N6tK8w24aJ+6aAwP1Bd8mclEUVoIkxI=; b=FzrzWYmr5fsdHR58OtWmTVMR6S
 hDNCBm7PVvrnH7sOt+hqOUN3uJlS0cS8J0+cv2GnlBx+atcrGeAPZJ0HfLn7bVH9UCWJZnuNnayxf
 0p4p3D1BZIi38SzJpQQugNFbAbzTDhGj6Lq0tS7Gj/qMr6CZaldlniz6SacpQ+V9Novo=;
Received: from fhigh-b3-smtp.messagingengine.com ([202.12.124.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wJVIG-0004kc-4R for linux1394-devel@lists.sourceforge.net;
 Sun, 03 May 2026 11:47:29 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 62E487A0096;
 Sun,  3 May 2026 07:47:17 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Sun, 03 May 2026 07:47:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1777808837; x=
 1777895237; bh=W4arkRE5GK9+N6tK8w24aJ+6aAwP1Bd8mclEUVoIkxI=; b=L
 b7S0G5EJ6Ygn5my+Y3UR4wUZFLfmp8/NXH9apdiJN31OfC73jUnSLyHMPFLq/3DY
 Mni2tqv4ImlLv1CAYK4W+DcbpjWfZfih3eDTVkDOddCI9GRqm5E4M4Z5IfaC5nzf
 fJrY0I14330kL/VRtT2NCvcBVhIp9Pjnz0RtG2oZAfxJWDrKh8cZLftMwUHWBERT
 zSeQ7+q934GM+x5IQur5qFkOtoBVKHAcFhwnHv+sHaa8IwHhw99KzCTRTEP9fjhx
 20sVfC3Cnkma4kZk2y+B4HIURQVafmbZpnIrrGQH4TalyDuBXOSvDtt6uFtMzysN
 K683+xgZpew0SzUuEghgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1777808837; x=1777895237; bh=W4arkRE5GK9+N6tK8w24aJ+6aAwP1Bd8mcl
 EUVoIkxI=; b=G5m01N/qP9SQF0C7+jNBXvybYwO+nTWIYiZcV07ZIu7Ye9xUOA7
 KvNTOwZENZOTSpQm7txJ8EsWIfvIsrz5ehow7DUhhoXB71wGYl4Rqyyac7D/mBf2
 WzpoGe0s1Z/C7LryXm4Vo17V3vtNqeXu2h2Ef74P/6Ci9SVOYeIKFCl+dAx8MGTA
 UDZt9EjAj/TFEtluaLhG1JjraCxxmHRiRLYSktJB13l/etoEUA+8RlBeAaPi70Fi
 gTaJX2eiamVhsgqYHyuNcJECyt7+yumKzxcDN4BtAQ5tvtAprewHlKdQAdRmhf96
 wgftIbmzpYj7Jd78AjGr8FqhHc6BWMazIVQ==
X-ME-Sender: <xms:xDX3aaoSydDO_XCTrmdcB8gkqOt8DrnM0zalf2DAvKkguJnB_9m8pg>
 <xme:xDX3aWn381Tk1p1xuSGfUuoF4S5cpc0cPjreBMdhf8B_gdH8Nu4XJl87XYw65bBn1
 inKbBXM-qYH4GaS19heFhu4y13mDmamYzsigCQrcKv15vD2HDhsX6Y>
X-ME-Received: <xmr:xDX3aWwru2gmozQf4korvRpyFIsFzbvTBtnEampEZJxO59AUu7wxLQne9zkAiUOuOeqPaLT5LRBqQogczHx2dPGAZJFi>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdelheekjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhudekff
 ehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehk
 vghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefle
 egqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthht
 oheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:xTX3aWlw3A0vjX2yhmUHj4EKC55zF2qx7bDDOyHa-WOt9BZz5Ik7yA>
 <xmx:xTX3aXflOn4xwuOWFQTRy_ydWIutXRbpqawDd99ypZCvjxYwk_8QCw>
 <xmx:xTX3aUqVwhZ3hxYzvbBIwDthRtioJoAnOjJYCxoFgoDBrJvw6CBIPA>
 <xmx:xTX3ad4UsIMJwNJUe6J3516eCkCrRmHDyJXIac3qWI8O79LkUco6ag>
 <xmx:xTX3aRd0JVGHBaZYaUteZSnHiiZ0XveYnOIjbL3K3u9ChwZrR6zk1DI4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 May 2026 07:47:16 -0400 (EDT)
Date: Sun, 3 May 2026 20:47:14 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/4] firewire: core: code refactoring for isoc resource
 management work in cdev layer
Message-ID: <20260503114714.GA353219@sakamocchi.jp>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 01, 2026 at 10:58:19PM +0900, Takashi Sakamoto
 wrote: > Hi, > > In the cdev layer of this subsystem, there are two ways
 to manage > isochronous resources. My previous work separated the lo [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1wJVIG-0004kc-4R
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
X-Rspamd-Queue-Id: 058734B55D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

On Fri, May 01, 2026 at 10:58:19PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In the cdev layer of this subsystem, there are two ways to manage
> isochronous resources. My previous work separated the logic for these
> approaches[1]. However, there is still room to improve the current
> implementation, particularly in the code path that maintains
> isochronous resources managed by the kernel, where the current code can
> be simplified.
> 
> This patchset refactors the relevant code accordingly.
> 
> 
> [1] https://lore.kernel.org/lkml/20260429093449.160545-1-o-takashi@sakamocchi.jp/
> 
> Takashi Sakamoto (4):
>   firewire: core: reduce critical section duration in pre-processing of
>     isoc resource management in cdev
>   firewire: core: use switch statement for post-processing of isoc
>     resource management in cdev
>   firewire: core: refactor notification type determination after isoc
>     resource management in cdev
>   firewire: core: move allocation/reallocation paths into specific branch
>     after isoc resource management in cdev
> 
>  drivers/firewire/core-cdev.c | 115 +++++++++++++++++++----------------
>  1 file changed, 64 insertions(+), 51 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
