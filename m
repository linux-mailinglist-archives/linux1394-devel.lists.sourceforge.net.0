Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F18835D66
	for <lists+linux1394-devel@lfdr.de>; Mon, 22 Jan 2024 09:56:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rRq6P-0007cr-1E;
	Mon, 22 Jan 2024 08:56:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rRq6N-0007ci-GM
 for linux1394-devel@lists.sourceforge.net;
 Mon, 22 Jan 2024 08:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jCJhY/hrZos2QYaYx0pzY9ipp8ub1zvgZRZtgPKnZP0=; b=BzZ1Slf+7ub3B7qrsdckLv+yI1
 cJcRQ3zvykPzP02HGZPZL46+3YW17f8VByl9bDGFvZ9F6OOKVXThiO+8Vqm/LtOvl20HoX02+Krfa
 nAwVKxFB0NRiM6Aw83TZd8y9GtClh2iS3dcM2SRkH+ZBNFcvgnplqJQfd5dVZtuGrRRU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jCJhY/hrZos2QYaYx0pzY9ipp8ub1zvgZRZtgPKnZP0=; b=RsPFcEo+EsyEw/09aNIG3JmeZp
 5AZI+TkyUmWTpK1AVXpvNXAxUpX+lBw2rzcNuynEmjIXqIoKVrmHlHarkrwySNe25Y3KV63SxayE4
 CH4tp1//YBVe3drMarov80T+vooOn2ds0DIw4giMOgKH4NK6lZmGKPvtiJQdTx5TV2Ko=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rRq6I-0000eQ-NE for linux1394-devel@lists.sourceforge.net;
 Mon, 22 Jan 2024 08:56:19 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id B99D95C015E;
 Mon, 22 Jan 2024 03:56:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Mon, 22 Jan 2024 03:56:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1705913768; x=
 1706000168; bh=jCJhY/hrZos2QYaYx0pzY9ipp8ub1zvgZRZtgPKnZP0=; b=g
 sJo3NwdEGK6StViwC6qt4KIfFhNyRxLTmMK5jS3fE352NSuXvPhk5fQlHljFZQQx
 PgxmK7FM2gJmtDLlKnrJMAVF+b+ilvMCP52LfLKqpvaQPNjF9Pjt9t8y1DscNOG/
 vcPxHc9HpPXA1SBry3XXWjb+HIkeL4bULWwch8IVFNKBAyBDlUpi3MW4xOsD3KlD
 WQ1jRrvehM0Ao0V4Sn5lfoXIOYqkmujlDOEY1pTi3nRuSa1Gr5gpN7jF0kAbWW6b
 TPUnU3LaGo3hXXyvkXYdnZff2G7ofwUGh4r755Ic8SP4SSKdNNTpNiFd1t1sBQTj
 1nHo7sRAguF+bq+ICR/KQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1705913768; x=1706000168; bh=jCJhY/hrZos2QYaYx0pzY9ipp8ub
 1zvgZRZtgPKnZP0=; b=X7tayABSceUPXuyz+7cCq9HgUKF4BbiNGIuk4+GgLel3
 StsY2tDKcueIK+c/ptQHgmVYba3PhvXW/rPOPzNuRJZp/TlUJB7nKhjvPaPibDsF
 fesWAQ4DUNg3IgNBsd9Iv+VjLoXS3w+fB+v4tHcnsS6HIkVwQV2TCBzcFO+7X/YS
 nzhpKtD1donAGQnu9d6k6wMWfpqFPMiCmz5mdI/tkGST5IvdZ5mkId/kMXdRye2N
 V3R1kz/q4u90ymlHWFM0W95zX3pi9Bh7my36v+ZjB+X+BQY0geQa544J2/EU+anz
 TE8+OOwr1TtGnRSAYAtxghcXtrxfmkzu3mryxifj+Q==
X-ME-Sender: <xms:qC2uZZzRR2o5PrjecHk9-DiehNm75UcMPclZpl_fDerTL592_UbF5A>
 <xme:qC2uZZSDrJJNx94m2WiYKLU4y9sf3vDXZ5QWrnb7YGVmYFuCnOpdnUKV6DbhN3xFq
 STTZNFVQhFO7vfv0w8>
X-ME-Received: <xmr:qC2uZTVWew3a7KEaVOLeFLDtHMnX5b8_jmzPfwiJ1p6jK6sAPeyWe3xAoKzLIQJCa1Pr1ggjcs6SgOHKLSTDgUsaxN3eG3sYVwc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekhedguddvgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghk
 rghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhih
 drjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfej
 ieeitedvleeftdfgfeeuudekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:qC2uZbi-tkBd-ebjh0llEulg3r3GK7iGb-Agd06SfrA9cFO4TqH4WQ>
 <xmx:qC2uZbBIDFvnU_N1XaPrAPogk4_uVNTBceoDBqyyJ8Nnt41n1NI9sQ>
 <xmx:qC2uZUKvr_BBfXzZFsa9EWQ_qBR0NKBvUBQU0RCJARyuBuolRaW5OQ>
 <xmx:qC2uZQ7p8cuk6kkRDmiLpsFGjjnWluG6kuGTGTtIycd8AMBGaepJfw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Jan 2024 03:56:07 -0500 (EST)
Date: Mon, 22 Jan 2024 17:56:04 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Li Zhijian <lizhijian@fujitsu.com>
Subject: Re: [PATCH 1/2] firewire: Kill unnecessary buf check in
 device_attribute.show
Message-ID: <20240122085604.GA254251@workstation.local>
Mail-Followup-To: Li Zhijian <lizhijian@fujitsu.com>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
References: <20240122053942.80648-1-lizhijian@fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240122053942.80648-1-lizhijian@fujitsu.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Mon, Jan 22, 2024 at 01:39:41PM +0800,
 Li Zhijian wrote:
 > Per Documentation/filesystems/sysfs.rst: > > sysfs allocates a buffer of
 size (PAGE_SIZE) and passes it to the > > method. > > So we can k [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rRq6I-0000eQ-NE
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Mon, Jan 22, 2024 at 01:39:41PM +0800, Li Zhijian wrote:
> Per Documentation/filesystems/sysfs.rst:
> > sysfs allocates a buffer of size (PAGE_SIZE) and passes it to the
> > method.
> 
> So we can kill the unnecessary buf check safely.
> 
> Signed-off-by: Li Zhijian <lizhijian@fujitsu.com>
> ---
>  drivers/firewire/core-device.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)

Applied both patches to linux-next branch, since they are not so-urgent 
fixes.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
