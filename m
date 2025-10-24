Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 128C8C084FF
	for <lists+linux1394-devel@lfdr.de>; Sat, 25 Oct 2025 01:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DRsqWIOtzrmQ/VfYwmioU4J7zQdeIET/ZyCanjIl0/s=; b=DRWYZ5StltVQe1UjYql5ZS8p4f
	idHJ58iJTVGgv4bd28s+evnwfh4tgPXHPIKncqCoY1WR4+08fI4E+iFHMsjLqLRGmXIUZxm5cEF3x
	dXpxBczbNBz4P4ZbNj5/HJF6cfYYWRHkQLVErNh5UoCVN7+Fr6mT+fFwWuRhUY5g7m4w=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vCRDx-0007xf-L7;
	Fri, 24 Oct 2025 23:29:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vCRDv-0007xL-PH
 for linux1394-devel@lists.sourceforge.net;
 Fri, 24 Oct 2025 23:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=slAs9gyOiVOkhQ4jvSFpYbma0o0pJ9eNAgGX2yS9viU=; b=QNGBTR77/xShl/kC9Mj7lfyhVM
 pDPvDd9DmsJIJcZXZo6d/o8gaF/r2hRycRXzXeCj2lKLV3LShuGP04KY0R4FazgyxTvklPvzuCpyj
 355OKVUkNnNTvW8ya8sixk/PkHFSFmhweoMfcWWgCkFBiUtsvYPA9gedJUBJZJncJszQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=slAs9gyOiVOkhQ4jvSFpYbma0o0pJ9eNAgGX2yS9viU=; b=lPYwX2rb4Jef6nsU+SKGjpRzfr
 ySCpzCjedHnlar+IeMMFH17WCiZxRVQ0M1kxB5oPKgK0O9Djf4QE4w8erDneAuAtcbNY4Vd+wsEFC
 ZUf0NK4E+yM4MQ0T5KhNhfXRUQ9F12NKmmCHqJ7E8nuz5gVMHqe8Twy0XlEO3XGq9kro=;
Received: from fhigh-a3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCRDv-0004FH-BL for linux1394-devel@lists.sourceforge.net;
 Fri, 24 Oct 2025 23:29:32 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 92CBA140034C;
 Fri, 24 Oct 2025 19:29:25 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-11.internal (MEProxy); Fri, 24 Oct 2025 19:29:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1761348565; x=
 1761434965; bh=slAs9gyOiVOkhQ4jvSFpYbma0o0pJ9eNAgGX2yS9viU=; b=D
 w7S+1kjzGKrKj8mY7u73E4oQABnXWzBXOlMtTd4T1/eswRl9w1ykxLxLjrMOzasd
 pO+sKlBX2U9lC983/vFLp0Nd84WyTaVtUCZKLzCOi0mV2f9b7NDbxllRPzerbbFg
 95UMZkSFMsoUrG5Tb6CR2YD0EMbm+ICL5RMcwq8TTwamo3G5MmndozDKM588n7Vd
 fQWajsNJfPariWK4JPOAfW2D7W63jcXjwPOir/EqHiYFSDUGYXWpZX8caymKjT7W
 Nv3keQRmDcAl/RL7JXk0Tsk1QA9RX4iZVCgfvKGp0Mv1qfP5jM17dOqtFFL1pRuL
 ZUDE/+iLOylSnlZ9roOow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1761348565; x=1761434965; bh=slAs9gyOiVOkhQ4jvSFpYbma0o0pJ9eNAgG
 X2yS9viU=; b=fnOJulcOExZBit2juaAhPaPIPGlfSL0aRxZgJRsKqd2Sk08sesL
 4vOZCcuxdJKxqHE+jVqEOgI4VHbqg9kQYc4dKu2JUHAkO2GJJ16/jrNYiPymA74Q
 UES+L3Mek3LwIlNS7wh3cT3z58rz8JesSckLlfBoGkwIokTrCJkbCy9HuGCNXJ8q
 l1JcH7VF17jGLBkvpE1vsDvC8DW3BUbgnRIGnGb0NpEMcoPf5NssGK1kDkGnMgYe
 a4S9xbPQf/kyAl2toVBlen77tjCzXGH/s4QtbV8YeYfzOeCCzGk8jQtUZwktBuBR
 n11aadRrTJJMk5OuAeab6/N+l1r55/uW5kQ==
X-ME-Sender: <xms:1Qv8aKhpqxF9VjTPNuE962SG78MGNKEbIF0KWcOB41flXyiMeiLqMA>
 <xme:1Qv8aI81o8WgiXjAwQluG-o2B_TqH0p-ezkhUHSSU1hQ2V77vTC4xF_g9d6-p57wO
 3vM2BmsG9CZYwc_Y3Dip3tz2XE0zx90HlwNGZUU5bXZjEfnTcR7eO2m>
X-ME-Received: <xmr:1Qv8aJrFNhSRhrNzMbLnTgc--qm6kUBTxi29Er3ZvUbP8T_SaKE-bDg-5D5Z3abJQy2EX7uFNwPQgkZ7g6ahR94IZ0_bsHuqED4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduhedtieeiucetufdoteggodetrf
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
X-ME-Proxy: <xmx:1Qv8aP9paiRpKGBaIN82Cc5WY54H6733GmlcpRXq7Im0CZqmA_BAdQ>
 <xmx:1Qv8aFXuMtFs66fH4oXwFQNfA42EkTnCTH0BhDd5yOeh7sApF9TlHg>
 <xmx:1Qv8aNDP_fKlyNNrwLoOmExTzccxMMlWn1ZOrP19CFf5Xa5cs3e76g>
 <xmx:1Qv8aOxjBKe5qNqScZq-kBUua5owk19rWQUN93Lf_kERAmtooYmbUg>
 <xmx:1Qv8aIU9FTDV4NRktHY1PRu-dXD0ejD0Ay2r07UJVNW6eHyc70jFGk4Q>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 24 Oct 2025 19:29:24 -0400 (EDT)
Date: Sat, 25 Oct 2025 08:29:21 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: fix __must_hold() annotation
Message-ID: <20251024232921.GA463024@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20251023104349.415310-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251023104349.415310-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 23, 2025 at 07:43:49PM +0900, Takashi Sakamoto
 wrote: > The variable name passed to __must_hold() annotation is invalid.
 > > This commit fixes it. > > Fixes: 420bd7068cbf ("firewire: core: [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: sakamocchi.jp]
 [URI: messagingengine.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vCRDv-0004FH-BL
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

On Thu, Oct 23, 2025 at 07:43:49PM +0900, Takashi Sakamoto wrote:
> The variable name passed to __must_hold() annotation is invalid.
> 
> This commit fixes it.
> 
> Fixes: 420bd7068cbf ("firewire: core: use spin lock specific to transaction")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-transaction.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
> index dd3656a0c1ff..c65f491c54d0 100644
> --- a/drivers/firewire/core-transaction.c
> +++ b/drivers/firewire/core-transaction.c
> @@ -269,7 +269,7 @@ static void fw_fill_request(struct fw_packet *packet, int tcode, int tlabel,
>  }
>  
>  static int allocate_tlabel(struct fw_card *card)
> -__must_hold(&card->transactions_lock)
> +__must_hold(&card->transactions.lock)
>  {
>  	int tlabel;

Applied to for-linus branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
