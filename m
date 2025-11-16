Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7222C614B5
	for <lists+linux1394-devel@lfdr.de>; Sun, 16 Nov 2025 13:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=28ZqfsQsMW0mKyTmbCCE2yv7peUY6m0UHACg/sVZ9IU=; b=U3sT5KJlcqgoIYkf6R4vNUqJNd
	qP+z9UqWrJToC+jq3A0cKx7a9nWS6yzogm9GLUEP5XZ9TyoHBgG8QDXBQviSfCJ7ntLDLkNhsajhk
	fOUPBWzmJIU0vBQ+PmRp/J8e/LRexysrpooVnnLG5jcecVJuL5aWrlf8dkL+bZjvITls=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vKbuH-0003zO-A7;
	Sun, 16 Nov 2025 12:31:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vKbtp-0003yl-BZ
 for linux1394-devel@lists.sourceforge.net;
 Sun, 16 Nov 2025 12:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uxC9pM3cZF/CjUUd1dvay5FUET9Y6MOVQLwFNe+GFAY=; b=jaHg0ZlpiGdUoQg9qQdaRpwY7K
 sd6iVZK3wVjqC/L2k4++doYKuLxgjxWMaYL5tUhEpaex65DVVj2syTJuF8j8mP7SYE/PXP571bTlc
 6oyYgSiFZI4dvIdfMjVS4FDtbh5fd/Dg2pXEF495fsHML6YzScsKBKix4BhveT1xBTLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uxC9pM3cZF/CjUUd1dvay5FUET9Y6MOVQLwFNe+GFAY=; b=LWWQgP7IM7YNnAjO5hqBpiqTTF
 L+KWDM7/R4rNERpNv1gTOkOkpKYA0D9OMYTBJIzNsqMKUZ4nchv7N2o1CiE5ooLkU/pkQnhvJf6bk
 ox3w/GVAnqmx65qePG9idULZn+uVXCLQIszu1Kso2+OWAImfPKrptaUnTmbfW8XGJh0o=;
Received: from fout-b3-smtp.messagingengine.com ([202.12.124.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vKbtc-000420-IY for linux1394-devel@lists.sourceforge.net;
 Sun, 16 Nov 2025 12:30:21 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id C38F71D000BF;
 Sun, 16 Nov 2025 07:30:14 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Sun, 16 Nov 2025 07:30:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1763296214; x=
 1763382614; bh=uxC9pM3cZF/CjUUd1dvay5FUET9Y6MOVQLwFNe+GFAY=; b=d
 71c5kLKuEhqG1gE2TJSYIImx9P11ZtAVlo20BO3pfS24X7tHoncIkknDEKC+3nnv
 4ZYjaB718Vfy+wukph+/oqCUz93hPj5vVdbib/UlZOkytN4nIAHXM6cJrUYZmc4T
 3fLI7Br78T9AIygOy6aapSsuLA87PvYimbMHl4CJn2RxcoeTI4sIjisUx2rroRk6
 W+SLXCAUhxct7Ib8XdZAHaYdC2xexyee/j/nmNGBsr68jpL+ozXNV3n5bDTQCyqB
 vaaHvwgOflb4rGPDhIHqwaXmq7e8+fjUT4Sk2pATxIterk4TBj2z5bNnUw4boa+Y
 9WR+WvePg4CD/2Ibv4jWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1763296214; x=1763382614; bh=uxC9pM3cZF/CjUUd1dvay5FUET9Y6MOVQLw
 FNe+GFAY=; b=2aLXubQ9t5dcyv9zdR7ZDhg4mGNwuRZzor28CIRYCFvRaQNMMQU
 W5q98hMfoXwpE9Ooujr9Fm22I7URHHIvwM1v3y7XC6SEziI69YtS1lgiI55dTk48
 JuSJzUP9tv1M8G0fA/JeKahYVaNLZX0QlUh7KIBw5qyVUk5y+p0EPPAgdojGoYjL
 R2g6RS5mecbzoTrrBlXxvzf1wj9ShTUThhjv9kBW6c5ti2wBxroCOMMRjzFUHehV
 AqzeYH6ZQbLhiONi+xlwzhlqWrrYU6ByoPQumEQHQPM7sPJmvg4xcy+Z8VRreXbF
 jOJl7nZFErqUcCWWMTiYAngQ7SefILDKT/g==
X-ME-Sender: <xms:1sMZadCZccTezj3VBdnc1QwNGs8EbwB4DQ2VeZnxKdys28ViDlLGZQ>
 <xme:1sMZaZemKQh8P3OGhijwdeQ0W5P8WtV9Co5xWKmAeJE-8HxR1Vn9GCzWbqpDUujqo
 lojgD3vCAOjRTifaTuDo2S6d5VuGqBqI1Kcn4rqcBr_kQT9TW_7RxI>
X-ME-Received: <xmr:1sMZaQIWYlR93IdzYkRatYCXPC5g8_1aXdNgJvgRnFx6-p0A3D0d9v_Yl0GISihRJoZWEEjYiCT5GidUDaNohDKG9x0_lVS_I38>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvudehheelucetufdoteggodetrf
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
X-ME-Proxy: <xmx:1sMZaUcW-bBeR1HGdgB2utDSdSfvYryoDc3v_dXpv2AAzjmykofymw>
 <xmx:1sMZaf34GhvvrNm05RJgJetcPdc0cDkVwH3r-QUPBANeQdivmgyVKQ>
 <xmx:1sMZaVhJPWdLuhgdW7A4aJIsaqBwHOpG6Z8BE__QWb_Trn29rdarxw>
 <xmx:1sMZadRSmyZ4ZEnISSviqPaAt7q47FPRaGWEFaNuCwXxRCaCVj1Z9A>
 <xmx:1sMZacCdnxVA9hsjIQfCce7mVqWdT7B1yYbXKphbbW5ymiTaRZXuocrB>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 16 Nov 2025 07:30:13 -0500 (EST)
Date: Sun, 16 Nov 2025 21:30:11 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: fix to update generation field in
 topology map
Message-ID: <20251116123011.GA646745@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20251114144421.415278-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251114144421.415278-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Nov 14, 2025 at 11:44:21PM +0900, Takashi Sakamoto
 wrote: > The generation field of topology map is updated after initialized
 by zero. > The updated value of generation field is always zero, a [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: sakamocchi.jp]
 [URI: messagingengine.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vKbtc-000420-IY
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

On Fri, Nov 14, 2025 at 11:44:21PM +0900, Takashi Sakamoto wrote:
> The generation field of topology map is updated after initialized by zero.
> The updated value of generation field is always zero, and is against
> specification.
> 
> This commit fixes the bug.
> 
> Fixes: 7d138cb269db ("firewire: core: use spin lock specific to topology map")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-topology.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied to for-linus branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
