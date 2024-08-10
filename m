Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EB85994DF2F
	for <lists+linux1394-devel@lfdr.de>; Sun, 11 Aug 2024 00:33:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1scueV-0006Tc-PP;
	Sat, 10 Aug 2024 22:33:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1scueU-0006TU-Jc
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Aug 2024 22:33:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=16V/ecT+Q3nGYJ/WX/ghSoW8dgWNcKTfOO+4QSdRadY=; b=WrJVdxt7GIuh9puDD+ff7uiFKC
 XN8TVJVfALttG5DOH5YCewwg65UGEDA/NiOqh2QOJfJMVk8f6i6g5+epTTOZOOkZjR+TQXujRg9sf
 1bhtgi7hu0YbQEnLDj2UC0wdJd+nbUOYr9Qu3k7VfhkhFv+IAbaiGANhxC8HqZl6tPHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=16V/ecT+Q3nGYJ/WX/ghSoW8dgWNcKTfOO+4QSdRadY=; b=PusrSfpSi8Cy3YCXr1ilJWqFdX
 f1i83jD2Viidv4FydlJ4bTZ0VILxvViQ+WHeWP1m4UGovlS7Fzh3+1xLhdSoGqluSr9QXv7kCZN4c
 YS+pK+qRU5SjREqW22m4HBnB6Z25vscBtyqkMgrQKwfjFJl/Sl8rW3foW+p9MSWQ6pMg=;
Received: from fhigh1-smtp.messagingengine.com ([103.168.172.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1scueT-0000ZJ-JX for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Aug 2024 22:33:34 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id E632E1151B6A;
 Sat, 10 Aug 2024 18:33:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Sat, 10 Aug 2024 18:33:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723329202; x=
 1723415602; bh=16V/ecT+Q3nGYJ/WX/ghSoW8dgWNcKTfOO+4QSdRadY=; b=D
 x9UXrTvKdqX+nV/Z/ORnMEifuI+9V87tT29ac83M+HQ+DiRMhYBc87yR4qimd7dN
 YNauDOelBteJLGjFELjc4vd/HCP+Lz9fQrCKhtURsOrxUuHE/NKvik5iEV+lxsuU
 xxrm5HE0IalRrZeaXJ9Rj8O0qrcep9SGO8nXo3kVjB2YgTf0TITzaf1KU/+AXnRT
 6s2StbX+bCdEs4X2FDqByur7v2g0RZ+GUdp1pSKLXjqTMfveZ1u+ChltJ00lTjNy
 6Yhjgmqxd/sqc5vFYVg8fQI1/eWoNSnboUTcRWVaPSzQPkdrhJDWBiB3Es/JPU/a
 9fHOnOJZJQ/itcXpEnEzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723329202; x=1723415602; bh=16V/ecT+Q3nGYJ/WX/ghSoW8dgWN
 cKTfOO+4QSdRadY=; b=nowOQL6tUJAneBxZDncGR01PWucfnuYH6t6L3Ayts/xI
 t0H/NgmsOTCuA9oJf5sy4LW6ftkHpWhyfr1CKGh4+jp1oBjSqrLHCiiSEiC8FrdR
 GFdTXWB2MgpOHGuWji3lgoqGVlzOAjsOUSGKntUEiND+0u2qWBS9PD8v2LS7XU6d
 knV4r+SwBszePmgd+chFYHsmn5PRWjM/M4cOAXxPJ7b5OqWtPCjOg1yl4Z8RFXHe
 vjF2V4gqiKmmyEJxaq+EzTF8VKGjsOIAWr6fO6yqEsHIC2aAVomjK092iQoynBS+
 ozNjF+opgXWzHGAuRXNdszxa2bsyhGRzJAeuOGTCtg==
X-ME-Sender: <xms:suq3ZsHh5uLV4Oyi1SJOMoskaxDmyMTmyPjGAdNxcHh2jd2o8h3LpQ>
 <xme:suq3ZlWhA8-Ay1aUp7ezPvOwFFcQoMw79YVL1q_dBjzsNbpYC2vzNInwcMrwMeBme
 -qIRKPij3jI4fUO6S0>
X-ME-Received: <xmr:suq3ZmJnOs-calY88B6bmtJU0YES_MASIop1Lc0IuqCbo35aNLd23GmKy_6keDpmAAItTjcmdMeqf6SAzcTo9rgUkk80hzYn>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrleejgdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
 tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuf
 fkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedu
 keeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhig
 qdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:suq3ZuF8-0NrgniJFrLNw4UjS9S3GY2ypvJpARbCN78YkoC7sSfq2g>
 <xmx:suq3ZiUW9l0P3l1waHLXozA61BQh8cQGHXxa2cOLTaGpTWgWDoGkmQ>
 <xmx:suq3ZhNIrxo4WB7tVmh-Y4pJ-rJ1JTtW-lqwHS91VNsALmW_CqdoeA>
 <xmx:suq3Zp1ThDUrqxw32QXPk1ajwN9ZVBSsjwYHU0GX7tqxvaz3CB6eiw>
 <xmx:suq3Zvjind_N46F0aB10i2IFblgaLc6Npgd0qxeDn-9K9VZwVYlu3yXj>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 10 Aug 2024 18:33:21 -0400 (EDT)
Date: Sun, 11 Aug 2024 07:33:18 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: correct range of block for case of
 switch statement
Message-ID: <20240810223318.GA74211@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240810070403.36801-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240810070403.36801-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Aug 10, 2024 at 04:04:03PM +0900, Takashi Sakamoto
 wrote: > A commit d8527cab6c31 ("firewire: cdev: implement new event to notify
 > response subaction with time stamp") adds an additional case [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.152 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1scueT-0000ZJ-JX
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

On Sat, Aug 10, 2024 at 04:04:03PM +0900, Takashi Sakamoto wrote:
> A commit d8527cab6c31 ("firewire: cdev: implement new event to notify
> response subaction with time stamp") adds an additional case,
> FW_CDEV_EVENT_RESPONSE2, into switch statement in complete_transaction().
> However, the range of block is beyond to the case label and reaches
> neibour default label.
> 
> This commit corrects the range of block. Fortunately, it has few impacts
> in practice since the local variable in the scope under the label is not
> used in codes under default label.
> 
> Fixes: d8527cab6c31 ("firewire: cdev: implement new event to notify response subaction with time stamp")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-cdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> index 672a37fa8343..c211bb19c94e 100644
> --- a/drivers/firewire/core-cdev.c
> +++ b/drivers/firewire/core-cdev.c
> @@ -589,11 +589,11 @@ static void complete_transaction(struct fw_card *card, int rcode, u32 request_ts
>  		queue_event(client, &e->event, rsp, sizeof(*rsp) + rsp->length, NULL, 0);
>  
>  		break;
> +	}
>  	default:
>  		WARN_ON(1);
>  		break;
>  	}
> -	}
>  
>  	/* Drop the idr's reference */
>  	client_put(client);

Applied for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
