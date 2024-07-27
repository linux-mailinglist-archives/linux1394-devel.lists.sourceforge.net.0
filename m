Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4596C93DCF5
	for <lists+linux1394-devel@lfdr.de>; Sat, 27 Jul 2024 03:37:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sXWN2-0004WI-0R;
	Sat, 27 Jul 2024 01:37:16 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sXWMz-0004W7-HK
 for linux1394-devel@lists.sourceforge.net;
 Sat, 27 Jul 2024 01:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aGQwEv9LAE+vilTM4phPNf8+PymlrONlm64LKRuFtL4=; b=EyAiZX/2ZmaTXzfznGh+oCrePX
 5fpOTCftTaMlrUCEOwYqrtY/MPMD3t2kooo5qD4XkoPjOx40QBnWrEDNGJOHrJjQyBvl+BNPRPtiM
 dfRJbe3sjzKJApAn6hLwLt1/WO9g5ErPLYVMocF0NrfUb1KqS5ZeeKz5gvIPpxv9EWH0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aGQwEv9LAE+vilTM4phPNf8+PymlrONlm64LKRuFtL4=; b=GuSXTvv52r6Umvf4nvbSSV6ogg
 MGTN4/WgzHRB9TLsD8feQs8cuBzMnKd+CHQOoek/sAcynvfPAI0TEV/9sEDfkHFZKiiNITXuJ53wK
 F4un7P9iVqr64ucmQ0EHv/YF0IKkz8rzY8YI5dNQThp2hXTcKXHJR6yzfwOhAeEQl4bY=;
Received: from fhigh1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sXWMy-00041d-AE for linux1394-devel@lists.sourceforge.net;
 Sat, 27 Jul 2024 01:37:13 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 41D81114016B;
 Fri, 26 Jul 2024 21:37:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Fri, 26 Jul 2024 21:37:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722044221; x=
 1722130621; bh=aGQwEv9LAE+vilTM4phPNf8+PymlrONlm64LKRuFtL4=; b=w
 c4b3fPjZm53KAK2Uw4xsZxjaaH/2UenhYFSYZl+eU7gH07x6OAXECHVvN8jI5eO8
 6sa/iEdLpcedjWtJCSBu2U92s87f6gUCKy43ZmKIk1QhXVKi8L4S6XkJQV3YMLyZ
 4k6D5buyb/NemzfZj9Ill0zl6NS6HuNnw2cVKkXjJd3NEO3FfgWYrDUVXM2zEay5
 A68IJr40MqcFNB7HAki/xVAei8gdu8MKYNW8HHxCUOGgusl0gsGhYy7d6O6zrEIK
 yxfJzn+0JS1kGkXHhBcssqp54ovoa8bqp7BdJrxqjUGEMIVHf31lFmMt+bHTbFlw
 1xrvbelfNRsosb4QN4A1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722044221; x=1722130621; bh=aGQwEv9LAE+vilTM4phPNf8+Pyml
 rONlm64LKRuFtL4=; b=AbMe2EeVgSv3RdzBf6296Q0lTzO09srcxtg5CqA9GDdj
 yxLnvXaArevmmntXaS0gEnTCHChu0LrWcGIDwLNW1/eE/kkbhphgPFahAX/yvjir
 DjDP8bX36/Epw7s03GxfV/YGXie6xdYpzX3H1pzoX0FlbingoEkqkt3tjSm5SxA8
 L8EHGsiMnNkxWP/nTA4FHZlT9IIZ3NC9AsyONbOp2H0qthqL8m1Kh5/OkM+b2Cc4
 ++3yh3oKgD5bCz/LjHzOU5YxyK90RXJ+igohzgTTuZGw0V8xkHX6wQbgddT2jgVd
 SM7HsCCyZOmCk68T4O7Ial8SIFY+AegS1kBOKfCqMw==
X-ME-Sender: <xms:PU-kZvgB94znfxKW0nX52dssSTPLQq-coaUbeDcWBqXZYHUe5ow9RA>
 <xme:PU-kZsDChhnArUqgaIeyaikCG8aTe2i18inrtDyjfLqKZ50GWbokGRoe9CfVoHZqh
 nVLv5Ofd9ybVCYa820>
X-ME-Received: <xmr:PU-kZvHDufHC1pRDYleAxm9WbONWkC6mjQhrSWFJUdCmnbsl9GLvfTNDUAtc5ui2KCR3bH8rgJ-WdL_reJpl82G2RkE4pS0mjUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrieeigdehtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhud
 ekffehkeffudduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhn
 pehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggp
 rhgtphhtthhopedt
X-ME-Proxy: <xmx:PU-kZsRfMrdj-vjNQwsJu7xr2FHRXISP9YXRl7K3MRYt6K43LEW2tQ>
 <xmx:PU-kZsyicL-_-C2V9_zTET7RpUiMrF-zijBwdcLj3F1M3zHxY7Hynw>
 <xmx:PU-kZi41LzJr7Sr8mRnh4rPTCCWfxc49MDvWGghwlblQ2a-BOK9lmg>
 <xmx:PU-kZhyK5iQTQx5jC4sJqygH3Ck-4Bsoyq7johAozONw_ENFAiobyg>
 <xmx:PU-kZo_Sa_HyyBqylFxyWJE1zRen3bviUChgZYAkuLZI2Zoa5pLdk7fc>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 26 Jul 2024 21:36:59 -0400 (EDT)
Date: Sat, 27 Jul 2024 10:36:57 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] Revert "firewire: Annotate struct fw_iso_packet with
 __counted_by()"
Message-ID: <20240727013657.GB163039@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, gustavo@embeddedor.com
References: <20240725161648.130404-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240725161648.130404-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jul 26, 2024 at 01:16:48AM +0900, Takashi Sakamoto
 wrote: > This reverts commit d3155742db89df3b3c96da383c400e6ff4d23c25. >
 > The header_length field is byte unit, thus it can not express the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.152 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.152 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1sXWMy-00041d-AE
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
Cc: linux-kernel@vger.kernel.org, gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Fri, Jul 26, 2024 at 01:16:48AM +0900, Takashi Sakamoto wrote:
> This reverts commit d3155742db89df3b3c96da383c400e6ff4d23c25.
> 
> The header_length field is byte unit, thus it can not express the number of
> elements in header field.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  include/linux/firewire.h | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/firewire.h b/include/linux/firewire.h
> index 00abe0e5d602..1cca14cf5652 100644
> --- a/include/linux/firewire.h
> +++ b/include/linux/firewire.h
> @@ -462,9 +462,8 @@ struct fw_iso_packet {
>  				/* rx: Sync bit, wait for matching sy	*/
>  	u32 tag:2;		/* tx: Tag in packet header		*/
>  	u32 sy:4;		/* tx: Sy in packet header		*/
> -	u32 header_length:8;	/* Length of immediate header		*/
> -				/* tx: Top of 1394 isoch. data_block    */
> -	u32 header[] __counted_by(header_length);
> +	u32 header_length:8;	/* Size of immediate header		*/
> +	u32 header[];		/* tx: Top of 1394 isoch. data_block	*/
>  };
>  
>  #define FW_ISO_CONTEXT_TRANSMIT			0

Applied to for-linus branch in firewire subsystem tree[1], with slight
change of comment. It would be sent to mainline today with another patch[2].


[1] https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/log/?h=for-linus
[2] https://lore.kernel.org/stable/20240725155640.128442-1-o-takashi@sakamocchi.jp/

Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
