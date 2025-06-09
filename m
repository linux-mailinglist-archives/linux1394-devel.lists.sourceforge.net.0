Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68946AD2A44
	for <lists+linux1394-devel@lfdr.de>; Tue, 10 Jun 2025 01:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9O8fj5bydZq+1GdC670mBAcZyz4Wnvh0olddD83Er+I=; b=L/FAlj5yYglB5rBNZJWu3J6XZ1
	Jnzag8xD9XxzWAtWAxte8r1QmJZIyas0R5shpWlRgrP++m58NDoicOXEcode0KrZCsS/K2p2vl3IZ
	7I8TfoTF4/QiyLHMNT5ED9/IG05Q9C2jcWwWOTMeUdlPssVYf7LlkBr4y1g+6koJr2sM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uOlYD-0003uL-Ju;
	Mon, 09 Jun 2025 23:05:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uOlYC-0003uD-Nt
 for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 23:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YNKkdPKEddyvw9xmqNRPXyL57rmfsoKQytYhEJngUbE=; b=aLW3R5fZ9wasoXGz6BSPeNWzyt
 GvfHXGpe5xmV+8NKtusgDmbO0PaCtzCkIUD6jSaNHi7foWtD+EoO69XwYo1RVUqdyP24rbZBdl7wW
 MJP+R8v18kCQf+0UH8OOw9tEuO/+EPXN3A9lSckqeKTgraj3qQgh/B7W4zyzJgEaa9r4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YNKkdPKEddyvw9xmqNRPXyL57rmfsoKQytYhEJngUbE=; b=NgQPyADr0iNt9scToIvJf0DPs5
 YKhx+h4OaqL9XP73IKPQT0vxyo9ZuqLRiMIpWWab1hySUwj0cYxoZtS27PHf1ppco/pdecS4zKTge
 DG70S4THSX207lURZ2fIa6kz1eb+xBakb28gDUVLBcTDyQgrxmsGVrxT2MNre4Z2VfQM=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uOlYC-0002gM-3M for linux1394-devel@lists.sourceforge.net;
 Mon, 09 Jun 2025 23:05:08 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id 98A2D114035F;
 Mon,  9 Jun 2025 19:05:02 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Mon, 09 Jun 2025 19:05:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1749510302; x=
 1749596702; bh=YNKkdPKEddyvw9xmqNRPXyL57rmfsoKQytYhEJngUbE=; b=F
 merm7uG77jz0IkaP1Djkbiw/5sBTe/68hV8kQwFYSyxIcIPPzaKhCzslCAWAnX7j
 U8ZVgACSBR2mcN1wjG6QQcit+lYEWKxXvsr1I//E98B7IFFh2EU6N0nyiat/5OHJ
 L4lspCX2NiExxibbzRLuArZHTSsyuvyHIu8BA0ehKYPeffAWK/VvWm8dei/M9pG8
 3A4KNYOH44H004/Bo2b84/eHWRd1sRHhpWflEWirdAd8ko/Tom1745CUbL8HXEOd
 FQL+ir9XI6JaHt50GaeWOB4cMaZyIyE3X4LPw7hBktUSQeLgsS7x8tlPuMYhKZ2P
 /nMWmu4/O2gdrezS6EeiA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1749510302; x=1749596702; bh=YNKkdPKEddyvw9xmqNRPXyL57rmfsoKQytY
 hEJngUbE=; b=Fn2/dvXJEKHLhN5bakk4BIRCBLtF4+w4LxUEvpXx/+RSUla8fiS
 HqK1XnC+GTF8jNk4PVQmoLxNsJUxeGfwAYmAiReZNjAFZuBS8RZ9L+5C36JLj36r
 x4EfE+st3WshCEVbRRstIcVrq5jyjLDtEwGf1jUfWu88wHwPKyGGNxXVAiqNlGjA
 q67/QYfRs4uKOVYKKVQOpqlaASw+OjDb2jeJGIp/fqXAMthNQcvtcLXgyJ8G/jeF
 q4z/Zef+i+6uKD2/OrnxMxebnJtkdjnQCu3rb5qAL+5EAP+nu506GAgwmDQU8ODe
 /+z2iziwwja04uJOrBK5rpJRF/9GQiac8TQ==
X-ME-Sender: <xms:nmhHaE_e8k0l_vponOJ8pQVPmrvw4S9rFlGrXxbPX2GKDFlA5Wu-mQ>
 <xme:nmhHaMu97R7EWkc6U-XzyNQbONUAA7s34F9426rYPPkAVpLq6-obd6uMXrSk_o72g
 eLb4eYaiipCgZfbUhM>
X-ME-Received: <xmr:nmhHaKCJQrzq0j62tF3kgc54dW0qb3CZmZg-2EQCkrjkOO1294x9rozDnZjYvVUigSqOIWaBOXprNiXETunSSDY1Gm_7WNKRDbAZ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdelleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:nmhHaEfFXdQgu1wjlCToJi2ptac8CU89Mr6tc4t4UvbIjwbbEUGWbA>
 <xmx:nmhHaJON4laSsj9DdNeuM1UDwEV9cM2Zbn46qQdNKuhi1Ox-d1-61A>
 <xmx:nmhHaOn1EgjRpuIhBXONK33yWHmIYAWLjT3FKVkKqaUEf9ZRtgzGcA>
 <xmx:nmhHaLuba6yFw3vrpM8s0O3yi4W5kaNXqqIt1djuyuGeTtLHMva5MQ>
 <xmx:nmhHaGeht_X4UqoaHSlmVk_uSTpakfufewrJQCjiJa-Gcl5tm1coV1Dh>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Jun 2025 19:05:01 -0400 (EDT)
Date: Tue, 10 Jun 2025 08:04:59 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: ohci: use from_work() macro to expand parent
 structure of work_struct
Message-ID: <20250609230459.GB229165@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250608233808.202355-2-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250608233808.202355-2-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Jun 09, 2025 at 08:38:07AM +0900,
 Takashi Sakamoto
 wrote: > A commit 60b2ebf48526 ("workqueue: Introduce from_work() helper
 for cleaner > callback declarations") introduces a new macro to retr [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uOlYC-0002gM-3M
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

Hi,

On Mon, Jun 09, 2025 at 08:38:07AM +0900, Takashi Sakamoto wrote:
> A commit 60b2ebf48526 ("workqueue: Introduce from_work() helper for cleaner
> callback declarations") introduces a new macro to retrieve a poiner for the
> parent structure of the work item. It is convenient to reduce input text.
> 
> This commit uses the macro in PCI driver for 1394 OHCI.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)


Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
