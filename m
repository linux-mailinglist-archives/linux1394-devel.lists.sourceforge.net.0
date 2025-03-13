Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FB3A5E8F5
	for <lists+linux1394-devel@lfdr.de>; Thu, 13 Mar 2025 01:21:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tsWK5-0007yv-8c;
	Thu, 13 Mar 2025 00:21:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tsWK3-0007yb-7Q
 for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Mar 2025 00:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ivul6aIvs6HSo9qOyouoHkt7QFmrzjtgI/MDUv4pG6o=; b=OjcvO7rG6b8Id3Caa8GrfSR7aU
 nI7iD6kTg3NiNj2arqd/GkgtkK4/Tr5/1jgnc36ct4HX6sMU9JkvxshizQ1f/C9xOR4jn8g7EaEEO
 HcTF29I3YovuLdF2sBTqNZ38WFE7HK516xSPNfRwEfdyHs/fYw2xdM7BVj+EpOVXv0aU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ivul6aIvs6HSo9qOyouoHkt7QFmrzjtgI/MDUv4pG6o=; b=brkIdFNjsAtdmvUrF7+xk7RyWM
 DjBf+Aj996jx/laZCjcnuD1kVHnYuFLG2RTNV/nq+kz/+phRW9H1XwV/5+4fJ3Fo/u1Gm0G+evVLe
 c1XpqTMWYND972LvRcxbOaze6RzvYh9YsMbwdsjzRx17eLejtj29FBYgGPKSJiNe1eXA=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tsWK2-0006Ax-DB for linux1394-devel@lists.sourceforge.net;
 Thu, 13 Mar 2025 00:21:15 +0000
Received: from phl-compute-08.internal (phl-compute-08.phl.internal
 [10.202.2.48])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 1A93B25401B8;
 Wed, 12 Mar 2025 20:03:40 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-08.internal (MEProxy); Wed, 12 Mar 2025 20:03:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1741824219; x=
 1741910619; bh=ivul6aIvs6HSo9qOyouoHkt7QFmrzjtgI/MDUv4pG6o=; b=L
 Z304NhKmwGdc5rucdjKPOPi52lbHQJMxfn1SZkgvxEBOrVY/1DEUPCnIPeMpum8p
 RdP6JmJVd9p6KkSTAtIIrutR1DwTFJm/rWxmdrjL/J2pZ5sZnyAKLAuQzTkQG0xC
 X9vmxY1OsXIJ0mKlOIrt0tYqrmJLpyF5VGcBv1i7RL3vaYBDf82I44dwC9W/QcvO
 30ydPh2NPPrb9LLNF5bqEgdk55H1qo9PS96qpNQ92HkPnR8kLvIkQzkPZHnfIIP8
 3cIvAG3YKFwVtHJDAy/BXt+9KFz9Rf6mhLW+qFvf0TRgQ087XOaXbbo3b7rFqThT
 dbC6tfJYHVxwhJ3qTI9og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1741824219; x=1741910619; bh=ivul6aIvs6HSo9qOyouoHkt7QFmrzjtgI/M
 DUv4pG6o=; b=CHrjBbMrj5KOoW9wgEdlWeW5yzK9764GQV0WRT3M1nRqe7kbN9K
 TDWf+Vgygmn0gjkimSIp8vgmOJ38zyc5Ec9mQFqSK7pBnzDy+X5TF3L734VvXLD3
 HFOSpy6lBycHZ/wfvZ3YHz5l+lmusn6x/Nja+h6bQApZJx93cYluu/BOgUvdStUi
 t0bnfbXJsYsSuHOCtQK0QR9/s6XLhYTu9whj2nCrRKnppr12fRbuVNhzr84BqTwh
 p26YEZkeNXoPolv1DzKqg1wMjG9FfpM4edmptpVEPeGz36GGBLMmG5uJDvSizoyh
 7iQdb+B/pj2eV6LTw6Icl9HvXft2k9KKnsQ==
X-ME-Sender: <xms:2yDSZy4cVe9o23idBt2K14fYyLxDHbDHR0KOlFr_aLrCmxtUxLX5BQ>
 <xme:2yDSZ75v7ITufVpYM6UWMXsfL9XSaNB_vQCsSeZcK4pxwI6OxmtoWWFAb4ileXeEP
 uLYT-tSyGCyT-1bYAY>
X-ME-Received: <xmr:2yDSZxegmMPqwZd84hjELVjpwsLtSxLcLzAzevO8ddQVj-fDFCUQNGW-aIaxt7qTcnNGnxl1lwQN5Bdta4e34Md71GU2Q8I5UyI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduvdeigeeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhf
 fvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghk
 rghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtf
 frrghtthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfg
 feeuudekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthho
 peegpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehguhhsthgrvhhorghrsheskh
 gvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhi
 shhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvg
 hrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhh
 rghruggvnhhinhhgsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:2yDSZ_I_6DOc7d5OeZSTgKgcTBUsHpiXlCaA1WtbiiQw1gykBKPhiA>
 <xmx:2yDSZ2Jqss4ZBDKBjJA1qCQwIduyQxfWKA1sJHGxrrGXR1sAmkP3vg>
 <xmx:2yDSZwz0ydw3T1PGBV_Em6scwqblBu4ZG8GbjUvrgdol0wlY9LZsyg>
 <xmx:2yDSZ6JC7UjNpSviQPhqhd4Mg6x2KMqcFoqe69ITHX2BpnBtPvh-jQ>
 <xmx:2yDSZ7HDU1cWI4dqPqrCQ1pQ3xf9QZm4ohUATzFvzidyE0-pQenGDrGe>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Mar 2025 20:03:38 -0400 (EDT)
Date: Thu, 13 Mar 2025 09:03:35 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH][next] firewire: core: avoid
 -Wflex-array-member-not-at-end warning
Message-ID: <20250313000335.GA320863@workstation.local>
Mail-Followup-To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <Z9AA9tAbcIcz6BMO@kspp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z9AA9tAbcIcz6BMO@kspp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Tue, Mar 11, 2025 at 07:53:02PM +1030, Gustavo A. R.
 Silva wrote: > Use the `DEFINE_RAW_FLEX()` helper for an on-stack definition
 of > a flexible structure where the size of the flexible-array memb [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.152 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.152 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.152 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tsWK2-0006Ax-DB
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
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Tue, Mar 11, 2025 at 07:53:02PM +1030, Gustavo A. R. Silva wrote:
> Use the `DEFINE_RAW_FLEX()` helper for an on-stack definition of
> a flexible structure where the size of the flexible-array member
> is known at compile-time, and refactor the rest of the code,
> accordingly.
> 
> So, with these changes, fix the following warning:
> 
> drivers/firewire/core-cdev.c:1141:38: warning: structure containing a flexible array member is not at the end of another structure [-Wflex-array-member-not-at-end]
> 
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> ---
>  drivers/firewire/core-cdev.c | 42 ++++++++++++++++--------------------
>  1 file changed, 19 insertions(+), 23 deletions(-)

Thanks for the improvement, however I think it includes a slight concern
about the calculation for the length of array.

> diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> index b360dca2c69e..706b9037faac 100644
> --- a/drivers/firewire/core-cdev.c
> +++ b/drivers/firewire/core-cdev.c
> @@ -1137,10 +1137,7 @@ static int ioctl_queue_iso(struct client *client, union ioctl_arg *arg)
>  	unsigned long payload, buffer_end, transmit_header_bytes = 0;
>  	u32 control;
>  	int count;
> -	struct {
> -		struct fw_iso_packet packet;
> -		u8 header[256];
> -	} u;
> +	DEFINE_RAW_FLEX(struct fw_iso_packet, u, header, 8);

The definition of 'struct fw_iso_packet' is in 'include/linux/firewire.h':

```
$ cat include/linux/firewire.h
...
460 struct fw_iso_packet {
461         u16 payload_length;     /* Length of indirect payload           */
462         u32 interrupt:1;        /* Generate interrupt on this packet    */
463         u32 skip:1;             /* tx: Set to not send packet at all    */
464                                 /* rx: Sync bit, wait for matching sy   */
465         u32 tag:2;              /* tx: Tag in packet header             */
466         u32 sy:4;               /* tx: Sy in packet header              */
467         u32 header_length:8;    /* Size of immediate header             */
468         u32 header[];           /* tx: Top of 1394 isoch. data_block    */
469 };
```

The size of element of 'header' array is 4 byte (= 32 / 8). The original code keeps
256 bytes storage following to the structure. Therefore the 'COUNT' argument of DEFINE_RAW_FLEX()
macro should be 64 (= 256 / 4).

Although the header field is not rarely used by userspace applications
actually and the reduction of kernel stack usage is preferable itself,
it is preferable to keep the compatibility.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
