Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D1CCBBB3F
	for <lists+linux1394-devel@lfdr.de>; Sun, 14 Dec 2025 14:50:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1dIG/4pSEW+E1VuG6HKpnRKNMu8kQYyFBKjudf0bZmI=; b=TEfxN0p85J1awCB1hRJFLsJoFL
	ivX5FHgHmnBtG+xjdeTC8klIaaw0/BXbHBzS3XOn2W8qD1Mjq0kgQ+SNm7+HnKsiC0wALDRKNY6ZM
	KVy9XQE4zYysOlMBRcNKTbnMiGMXEGKsrGP+9hwN9R5qLtvY+bBZKHsLVfRkZt46ggno=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vUmTg-0001Cv-9h;
	Sun, 14 Dec 2025 13:49:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vUmTd-0001Cl-Kb
 for linux1394-devel@lists.sourceforge.net;
 Sun, 14 Dec 2025 13:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/hQIkABHefmJ0nLENLlM4Y1Q5Tc8530QPcl7Xf91WPI=; b=aTzicRM0ZtNPrRaDIXLs9NB+iD
 z9Hvvz5zvwA9QIVo/kSPi4F83e64MAfMZK8iqQCicqP2y+pLwe80wELt+0Uhbb85r7ArKm5LSvFRP
 fp+kfKl0GmHwyaqqGFD+6A3PIcf4gKKDHpDmjXoo/SLbRWFSlt8qEM/uZoup4lcTVfHI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/hQIkABHefmJ0nLENLlM4Y1Q5Tc8530QPcl7Xf91WPI=; b=DMRxk90LvrRfZVL9JRV2EJv/mt
 LFNigZrVbbQqnZn7yCEUU28osK5QKjeP28+rK2A79LqfYgldBZqp82ebfPRGMTJa/oqO3O64o/SDo
 6uVt0C5/HzYYiso0jfyBkkJ3QJn/TzszuyOi8H767Ly4Bm9Ax3JZ8D87z6xjDp9nNvgs=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vUmTc-0004L1-4q for linux1394-devel@lists.sourceforge.net;
 Sun, 14 Dec 2025 13:49:33 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id 73EB5EC060D;
 Sun, 14 Dec 2025 08:49:26 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Sun, 14 Dec 2025 08:49:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1765720166; x=
 1765806566; bh=/hQIkABHefmJ0nLENLlM4Y1Q5Tc8530QPcl7Xf91WPI=; b=k
 8+nilarePcjTKlhCdIPghp332y+tYyUk29jZAd9DqbMcg8LDc6EpbTCMPPjOopai
 h9VWoQcFj7KhsJ7Z2s0YceutRdGf+WrQsX0T11hsdr5E3rC3sy5m8ZAP4/jQI878
 TOLXb7+RIVYuzfmrN3wYiFD++Pd5+n9Ss+z2cEH2xIbIpDHMzqexiJskYrVfXAtB
 N2IKXBUZXI5MXEPrTJJtKoeaI96xwJbkOSIGIICXd+GJNctdgTP25RGvlH2jwSQp
 jLHzkYhXipm2OSuwjYGu5h1KOSdxbNQT6FxAX5JWS1IkM9zOUhAxBhFoLT6AHdbo
 DReLF/QcWFDIPiit8HJkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1765720166; x=1765806566; bh=/hQIkABHefmJ0nLENLlM4Y1Q5Tc8530QPcl
 7Xf91WPI=; b=H6br/L/uBohcicEcrqA7yyQUfwaAxkqnqxxtSiVodD07SYV32rR
 Nsm30RM4VliDMG4s0qH9goiw2bUvaeGQa0XKQ38u6vZrsLwvc+gW63e3kChFmgMl
 MNHZVdHXe0F+mM4DLvi4PEE4Y4ey6iSzoEYatfu3fyPMiXp5eIvPEigb4WJCJlvN
 G+8B/NHkNT0+uC8tsg2yw8lrZVsEA0V5ZucmRX5SSH1Xv/N57jX5uSUEIGteVa0r
 w1WVEK7zT5zL/xErqLIprf0zvJ7dAL/wtRxQJ109GItAdC6vCoSxyLBZDPt5ew6E
 OhX54JRUnwUADP4Eakw9v2SN66heAYpw5eg==
X-ME-Sender: <xms:ZsA-aeGGimFia15d2ExuBGhiAhxH1DTRbLbb1EdvrmWLa4MeKu644w>
 <xme:ZsA-adKhtUvxqquSMTAITqjxu6oDb3h_o0tYJa7_pIZ1Cyb1TDoU3H1Yur50EldF0
 XvJ-vOiGzcxTaiSBmX8MhkoHNUq1oCeHMmC34SXOGyX3IOPmPzdTmM1>
X-ME-Received: <xmr:ZsA-aSnIkWJkyH0mOLvG-IUcWiajqY5v8t9ZRZ9nQO_3lb_3dRV0ogSbiLfX3msy9KAdi7xuOyANPYuI0lGbqqGtdZvaw3a_wPLH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdefgedtlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhi
 ucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqe
 enucggtffrrghtthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedv
 leeftdfgfeeuudekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgt
 phhtthhopeegpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmohhonhgrfhhtvg
 hrrhgrihhnsehouhhtlhhoohhkrdgtohhmpdhrtghpthhtoheplhhinhhugidufeelgedq
 uggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhope
 hlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthho
 pegurghnihhsjhhirghnghesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:ZsA-aVRdSVTy1GEjvtViARZxJ5c5REOh-ZVaCBW-yFE12KOP0p_J1A>
 <xmx:ZsA-aUJIcTYttru4qYzbaPQmcbyZB3iANuenUSK7lki7c0U97qIjpg>
 <xmx:ZsA-abD2K-kNzvC5jCypjLljq_x--3enhAIQzaOXMdSZw7W14HD_jg>
 <xmx:ZsA-adC7rHRr4tpawyZnU76ZCw_fhx04kB0QofDYZrkYGAyrAjvsmw>
 <xmx:ZsA-aVUBEuur-bT059A1rWCQLXIlGEhqwX4LI63o1r4vYvrMFnAnkNHh>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 14 Dec 2025 08:49:25 -0500 (EST)
Date: Sun, 14 Dec 2025 22:49:23 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Junrui Luo <moonafterrain@outlook.com>
Subject: Re: [PATCH] firewire: core: validate response length to prevent
 buffer overflow
Message-ID: <20251214134923.GA737872@workstation.local>
Mail-Followup-To: Junrui Luo <moonafterrain@outlook.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Yuhao Jiang <danisjiang@gmail.com>
References: <SYBPR01MB7881ABA3D4B9129FC2E6A3E4AFD9A@SYBPR01MB7881.ausprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SYBPR01MB7881ABA3D4B9129FC2E6A3E4AFD9A@SYBPR01MB7881.ausprd01.prod.outlook.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Sorry to be late for reply, but I always postpone patch
 review during merge window. Now 6.19-rc1 has been released, and we can start
 working to fix it. On Wed, Dec 03, 2025 at 10:22:32AM +0800, Junrui Luo wrote:
 > The FireWire core transaction handling code does not validate that > the
 length of a READ_BLOCK_RESPONSE matches the length originally > r [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vUmTc-0004L1-4q
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Yuhao Jiang <danisjiang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Sorry to be late for reply, but I always postpone patch review during
merge window. Now 6.19-rc1 has been released, and we can start working
to fix it.

On Wed, Dec 03, 2025 at 10:22:32AM +0800, Junrui Luo wrote:
> The FireWire core transaction handling code does not validate that
> the length of a READ_BLOCK_RESPONSE matches the length originally
> requested in the READ_BLOCK_REQUEST. A malicious FireWire device
> could respond with more data than requested, causing a buffer overflow
> in the callback handler when the response data is copied into the
> caller's buffer.
> 
> This issue has been acknowledged by a FIXME comment:
>   "FIXME: sanity check packet, is length correct, does tcodes
>    and addresses match to the transaction request queried later."
> 
> Fix this by validating the response length against the original request
> length before passing data to the callback.
> 
> Reported-by: Yuhao Jiang <danisjiang@gmail.com>
> Reported-by: Junrui Luo <moonafterrain@outlook.com>
> Fixes: 3038e353cfaf ("firewire: Add core firewire stack.")
> Signed-off-by: Junrui Luo <moonafterrain@outlook.com>
> ---
>  drivers/firewire/core-transaction.c | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
 
Thanks for your trial to fix the TODO, however I can still find an issue
in your patch.

> diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
> index c65f491c54d0..52f05e8f3798 100644
> --- a/drivers/firewire/core-transaction.c
> +++ b/drivers/firewire/core-transaction.c
> @@ -1095,11 +1095,23 @@ void fw_core_handle_request(struct fw_card *card, struct fw_packet *p)
>  }
>  EXPORT_SYMBOL(fw_core_handle_request);
>  
> +static size_t get_request_data_length(const struct fw_packet *request)
> +{
> +	int request_tcode = async_header_get_tcode(request->header);
> +
> +	if (request_tcode == TCODE_READ_QUADLET_REQUEST)
> +		return 4;
> +	else if (request_tcode == TCODE_READ_BLOCK_REQUEST)
> +		return async_header_get_data_length(request->header);
> +	return 0;
> +}
> +

The response for lock transaction request can include data. We need to
check in this case here.

>  void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
>  {
>  	struct fw_transaction *t = NULL, *iter;
>  	u32 *data;
>  	size_t data_length;
> +	size_t request_length;
>  	int tcode, tlabel, source, rcode;
>  
>  	tcode = async_header_get_tcode(p->header);
> @@ -1107,9 +1119,6 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
>  	source = async_header_get_source(p->header);
>  	rcode = async_header_get_rcode(p->header);
>  
> -	// FIXME: sanity check packet, is length correct, does tcodes
> -	// and addresses match to the transaction request queried later.
> -	//
>  	// For the tracepoints event, let us decode the header here against the concern.
>  
>  	switch (tcode) {
> @@ -1160,6 +1169,13 @@ void fw_core_handle_response(struct fw_card *card, struct fw_packet *p)
>  		return;
>  	}
>  
> +	request_length = get_request_data_length(&t->packet);
> +	if (request_length > 0 && data_length > request_length) {
> +		fw_notice(card, "response length (%zu) exceeds request length (%zu) from node %x, truncating\n",
> +			  data_length, request_length, source);
> +		data_length = request_length;
> +	}
> +
>  	/*
>  	 * The response handler may be executed while the request handler
>  	 * is still pending.  Cancel the request handler.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
