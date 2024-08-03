Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5A3946683
	for <lists+linux1394-devel@lfdr.de>; Sat,  3 Aug 2024 02:36:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sa2kQ-0001eo-EE;
	Sat, 03 Aug 2024 00:35:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sa2kM-0001ef-MM
 for linux1394-devel@lists.sourceforge.net;
 Sat, 03 Aug 2024 00:35:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nWXzA00oAvCJNJTkqfyglpkPEK7WyOzwaaBXgacFBv0=; b=XRE55Hd0dmLM4w+8Ki7USmuh04
 1kBgpF2XTAZp2xWvVC3wWc1ETvcGdOMrIli3Z9F6TAinSpJJ925Xoyu0xcOqGGdQ6EMBB0hVDnyl7
 GL/jWwrhPYQ6TFowBcuZfmUt41I1Vh9vSUBZ432VCC5077LHM4UDP9jcDTEeaL+UFbE4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nWXzA00oAvCJNJTkqfyglpkPEK7WyOzwaaBXgacFBv0=; b=A4fuC2AyG78/SaDktMXcTiphit
 euOtSk3JxHhNND+Eet5S5XZgBUrOyE1qh9mF5Pg5yokAgmJK/m6BIisQqM5EDnpDEFiZrfsb/AS84
 YYNVeAknqd4ZEAbH4d3qC6JjqI1sODbCKHOyw2uv3JYJai/tE5hDcJ6unK0rEeeOx21k=;
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sa2kL-0001OG-Ok for linux1394-devel@lists.sourceforge.net;
 Sat, 03 Aug 2024 00:35:46 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 2069D11501AE;
 Fri,  2 Aug 2024 20:35:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Fri, 02 Aug 2024 20:35:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722645335; x=
 1722731735; bh=nWXzA00oAvCJNJTkqfyglpkPEK7WyOzwaaBXgacFBv0=; b=D
 hJVtwtmx3tkoDpxuFIOxijoIc/9h3ppd9o46+JXY3HEKtJV5h7jrE5346rlsWwj3
 bdlylYbQ01aDythB9uRihpF8D+jAhW2EXcEFYOmqjbHa7X8uHOlKhiwOAMftjQZ3
 8OoskkgL/Xl5iY8bEnwnVygBXcbz3Z0AYmzfRe7tEir7gN5pdcAo7FQQCF3hs8ek
 ahuI9HudiY6+OUFcwXZ2oyhVN9JI8W7SsJm8ZSDQ6qV3cmZgQvp84k4AVf2NBTP6
 UGt4veLLX+lL3JgCYIquqfO9NkDvWdzidK7DcytL9azI8N4F13/pp5oQ1cPeuq6Q
 QP6eX/zH//uhGNGe4tTlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722645335; x=1722731735; bh=nWXzA00oAvCJNJTkqfyglpkPEK7W
 yOzwaaBXgacFBv0=; b=gCoq+ZA5zwpYNvpgTb0LdIp+78HCzEF7hAkLdXoNYSna
 9PETZ095c569M7m5euVeF2iYQiauvqqB/NtOGAHIwn7ykWhADMCaXTIRCmynpVPH
 z1odRZFZe+eMbn5NnASnKtUKntNZwZ+IxeefD913B/bWIsP80HrupNtpfFAtDSQ7
 yqSsJIxWS/zNXORtufJ6SycosnRo7rO/sjlkl7QrN5a0Ia7elpwIQivd7/iguGIw
 xEOgzNkI2GzUszPP+iT+DOasz0ZssjckjADgtmLIGC5dH3IcapjLRXxYt0zMy7Wz
 H9Ay4nSWfckze3dhNYIeexrn0JfBepTG7Yjhy7MNMQ==
X-ME-Sender: <xms:V3utZiTCX3C8g0hMiMO4vNZSGS_Btrm0lTqW_yPJqKukVvdZpITkMQ>
 <xme:V3utZnwdWFodEEM6pzfJDBzmIxwXmNsHHyjgchAqIY6yMSfbHB2VVVXtJufV_ci_d
 zB4UH8hwXCyEn6o0Gc>
X-ME-Received: <xmr:V3utZv1Nsk8T2AiX2yaCcHYaZ8VxJMGVXWJk6O8NeWuOmk2jE2z9e4TdkAvRAoz3xDsl3kp3EoFMbsH6PtUoQ4CezhSGqXr7VzQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkedugdeflecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfette
 fgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:V3utZuDuG7GbZhLksuMX5mIr0Ry_bdaiUUQtHJUew2v9FaECNBS7AA>
 <xmx:V3utZri5RTThLjIm_lTkt2Uu6UItVGuYPwoKiRcIHYMQeEQuXyGajQ>
 <xmx:V3utZqr_ES2DxMUCbG34uGh91up52-erWMfjE3DSrd0YnjQ2DjgP-A>
 <xmx:V3utZugosusEiky7CTg6hsDWKtqLH4MPJDLqzC-K-zzvozQKc98qVQ>
 <xmx:V3utZutFuecgDF3LIYxStRFI_aCy4LpKmVAupIGQ06DE0_aGnAvC8QsG>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 2 Aug 2024 20:35:33 -0400 (EDT)
Date: Sat, 3 Aug 2024 09:35:31 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/4] firewire: ohci: add helper functions for data format
 specific to 1394 OHCI AT/IT DMA
Message-ID: <20240803003531.GA126786@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240802003606.109402-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 02, 2024 at 09:36:02AM +0900, Takashi Sakamoto
 wrote: > Hi, > > In 1394 OHCI specification, the data formats of AT/IT DMA
 are specific > and different from packert format of IEEE 1394 spec [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.153 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.153 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.153 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sa2kL-0001OG-Ok
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

On Fri, Aug 02, 2024 at 09:36:02AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In 1394 OHCI specification, the data formats of AT/IT DMA are specific
> and different from packert format of IEEE 1394 specification. Current
> implementation includes some ad-hoc lines to construct the data, while
> it is not so easy to read and understand.
> 
> This patchset includes some helper functions to serialize and
> deserialize the data. These helper functions are tested by KUnit, and
> replace the ad-hoc implementations.
> 
> Takashi Sakamoto (4):
>   firewire: ohci: add static inline functions to serialize/deserialize
>     data of AT DMA
>   firewire: ohci: use static inline functions to serialize data of AT
>     DMA
>   firewire: ohci: add static inline functions to serialize/deserialize
>     data of IT DMA
>   firewire: ohci: use static inline functions to serialize data of IT
>     DMA
> 
>  drivers/firewire/ohci-serdes-test.c |  66 +++++++++
>  drivers/firewire/ohci.c             |  66 ++++-----
>  drivers/firewire/ohci.h             | 199 ++++++++++++++++++++++++++++
>  3 files changed, 299 insertions(+), 32 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
