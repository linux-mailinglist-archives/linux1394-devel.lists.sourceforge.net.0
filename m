Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 825A7C38835
	for <lists+linux1394-devel@lfdr.de>; Thu, 06 Nov 2025 01:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lo6KHmCgBirNqmWBiUAVvjq+ccCnTDeYoZuS11EDN1M=; b=OfZ0LuJ9iUTkbjLwXE26Tja77T
	Zhmy57F5I9qt/ZK+F0bBaQcojSgmkgoUe+d3BIJZBxx+xsOftARvXPGcfbj4CIc+88Of7tY1njm1a
	oVidzRgEINly7JAhX9MlF/hkWebu/XxYd+ny1laSw5A2FP6gkR4+Pgu8g1ECWbZdtb/Q=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vGo8L-00028o-O9;
	Thu, 06 Nov 2025 00:45:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vGo8J-00028g-Bk
 for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Nov 2025 00:45:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iMVQBhCbodDOlPgtYHasoP+2KCJfXZe+ug3BYsjar5w=; b=hxPOrlBFIB3t9u3sd2t44qCurI
 sgxPXr5VYIGzVbGGJKRBulG+F0kEqmJByKTiWUXlRLiDoFgy+aurteG08GtBxeTLm5+eVj3VG2g5/
 VYny954VtvkhH6lwf0EDvD7E4jSE9duxJg3o2QrVyi5+6Jzjf7WnESaOxh/rZU6E7wJI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iMVQBhCbodDOlPgtYHasoP+2KCJfXZe+ug3BYsjar5w=; b=HiPz+qmo6MtRNu7wMxMolt2lRI
 uHHW5oSMdLYB/5dy3Q9RZnBJ7ccMtbAUo1rCEkb0U+iWKo7ObcRo+nMqVsLkPV8QWPgIOUHyNxeMz
 OmBOZWl8NqrdPo02+UoXHO9ssnDqa+HH0RU8YxPOqlkp1UoYBc8i35jneZOVkg12StRQ=;
Received: from fhigh-b8-smtp.messagingengine.com ([202.12.124.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vGo8I-0003D9-AN for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Nov 2025 00:45:47 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 814867A0208;
 Wed,  5 Nov 2025 19:45:40 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Wed, 05 Nov 2025 19:45:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1762389940; x=
 1762476340; bh=iMVQBhCbodDOlPgtYHasoP+2KCJfXZe+ug3BYsjar5w=; b=M
 8PzGw7Vo48QVTxwiyDqizEV7S9vWtdzlvQEzH0NkK5BlBooZFffqS7aQAe8zPyJo
 flVWNfZ7ir2shhz5nPDoN9DH2cZZiBvxPWBCV/MnyRSol5+mUjc5JEiyKH2p6JzI
 t1XGpQL9YP6Ow8Xec6bJpapqaiDJgg3h7TaSeFkfHFwzbJLqqhCUNrzgw/d1nu+O
 V+u0vB8/6d95bGUJmCqztOabCjqWC/SHuTBSaE8CwzFX/+P5MSpsYls1dFvrL5Jm
 0imzC/d8xy2E3yNwLCJYvA00O25UbgWk5jPZs/wo1g79PeidxPj1Z8iWBz8ujvYV
 eMA2A4I06ZjLXjaDPN/Fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1762389940; x=1762476340; bh=iMVQBhCbodDOlPgtYHasoP+2KCJfXZe+ug3
 BYsjar5w=; b=eCLkpFVbzdAcniU88e3/jAF6oP39RYIiDDX+VBZLwgoPo/4StDn
 UUN9wkWjkvEHj9f08rZQ3Hj5bOJBTE5+cgicvcjZv+B+/kKMhK7S/fffvd8U2SNv
 nZS8e+nEphFDIL6XBeDadgrCboC2Zfhh+3r0ZhKVHZnbIP2QypdVHwvSWCIqAHjz
 5XD881fXGVJJrS7Mx7V86C0pOk1SkIlY5FP4oGX5Uay7zvBU7RQgjcAvwixiVK85
 qlGJzJnfbEy457qE5RNPrsyNWihsWqBbEHz2+QjNEfPzeQIvKhjzmz0N7yvL63QH
 2joFHAZvi1sK9vsX1og7G43fv9fktvFhd5g==
X-ME-Sender: <xms:tO8Lac974mjpMfjjI6eENuENGIgAYglnDl28GVZ-FJMlOUlbwHcxeA>
 <xme:tO8LaSr6WPBvC37lXgxVgiQrbRsP6PAgsduFmKkJLac98dZb4kyeino2PA5VYey-q
 wupsY1P6BFglt0N4JwqTREcs-e_ziuQvLCopJ6xIcpFO09POY8PE-rX>
X-ME-Received: <xmr:tO8LaZm9IjuQh2TlE4lQ1Tr8pleojQEJAelPv7lrGVOoQYAqRGyefmUROLhxops1uiQIm8qtkvUW19BPmogHnBDy6CgGwMdGHPz5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddukeehfeejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:tO8LaZIbxnj6xu-RbVNiG4uPEWWiMRVMcOo5veT8rxGz3qFBioDZ1A>
 <xmx:tO8LaeybS0vZK1Kma7HnsyUzM9wUHDizUgdgOjgvDLeidSiMJ1y1NQ>
 <xmx:tO8LaRtjqRTx23hKeUdGMX79sXklmJmettlhFszgfEQWgOYEBMBa1A>
 <xmx:tO8Ladt8i_YtWpMqQLEAO00-b72Z6zvQHepd8ypEeS_VLayBMKwDLA>
 <xmx:tO8LaSSMdo9tLaC3kzpNlHLTeKvMVWtFxnZI_q6KGRPGBekP15wjplHg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Nov 2025 19:45:39 -0500 (EST)
Date: Thu, 6 Nov 2025 09:45:36 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: core: code refactoring for transaction layer
Message-ID: <20251106004536.GA10722@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20251101102131.925071-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251101102131.925071-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 01, 2025 at 07:21:29PM +0900, Takashi Sakamoto
 wrote: > Hi, > > The current implementation of transaction layer includes
 some duplicated > code for managing transaction list. This patchset [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vGo8I-0003D9-AN
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

On Sat, Nov 01, 2025 at 07:21:29PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> The current implementation of transaction layer includes some duplicated
> code for managing transaction list. This patchset adds some helper
> functions and macros to eliminate the duplication.
> 
> Takashi Sakamoto (2):
>   firewire: core: code refactoring to remove transaction entry
>   firewire: core: code refactoring to find and pop transaction entry
> 
>  drivers/firewire/core-transaction.c | 57 +++++++++++++++--------------
>  1 file changed, 30 insertions(+), 27 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
