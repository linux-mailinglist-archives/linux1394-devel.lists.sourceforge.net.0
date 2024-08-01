Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A99D39454ED
	for <lists+linux1394-devel@lfdr.de>; Fri,  2 Aug 2024 01:30:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sZfF5-0007zB-Rg;
	Thu, 01 Aug 2024 23:29:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sZfF4-0007z1-7V
 for linux1394-devel@lists.sourceforge.net;
 Thu, 01 Aug 2024 23:29:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cWzBNSyZr/nWD+nAfENMlUJZa1DrpVqdWP/gez6SRyI=; b=WiMgjfj4PXumqWEW8Y9y2rcAYw
 GcTRevvbvpZiJpJ26YY9oAmetC9ZA79MbeK8oErGRw/1xv/7ao3hdRZwtdSAKwdBP5ZHlbSW/XZ9Z
 Dmx9ETf2Tr/nyjTis3cbKwCHd7z++0nimJpB4yRMAAwvlRK+lwoYVGyFvowsM2PO1ldA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cWzBNSyZr/nWD+nAfENMlUJZa1DrpVqdWP/gez6SRyI=; b=dklsk+Z/5Q7oBiqDRGwfW6i64U
 xw1oBO+S1CnPMHwzjtYxysTA1IEEE+DQqX7z7zi4JVXDjybfRUbYxdj4NKj4HRiuh/RYNqYz5ge4u
 ejfzdOgElq4XlhqUIgD2CSngpuanN58EGvwCMo5SquxwrNSZztaH1akLOpPfLfOvnb2Q=;
Received: from fout5-smtp.messagingengine.com ([103.168.172.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sZfF2-0005Zz-L4 for linux1394-devel@lists.sourceforge.net;
 Thu, 01 Aug 2024 23:29:53 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 15C2B138C92C;
 Thu,  1 Aug 2024 19:29:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 01 Aug 2024 19:29:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722554982; x=
 1722641382; bh=cWzBNSyZr/nWD+nAfENMlUJZa1DrpVqdWP/gez6SRyI=; b=Z
 lCMqIs86IwIn0cZCF5gL9viZ7kEDB5OcBT3pB3iLgligDx2C1bPB2S8wzf5ine/I
 QKWTbP9ZhRsfhZwr6X8GttQvSn+UMdw2ajJ8FsslUoMdBEqTcMt9z1+vkCtPZyEl
 gM5ALiG1+7nojjMYzzRKoQY89wCA7Q2QbceVu63hEfMEMqHSoWg+oN1/B5h3JNZH
 K4o1yEq+ItmgZ748Mh5tyOb8Gvcgnw8YKlFxva4aSP/uxvaT0KhgW6GH3rZKrRuP
 rw2JP+ds9V9/k48edFutelmotXQluAVruHJiMwCm1AbWknasqIZt22ztWv9qCdRt
 rtjt4dNqgX6y86jrZzKog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1722554982; x=1722641382; bh=cWzBNSyZr/nWD+nAfENMlUJZa1Dr
 pVqdWP/gez6SRyI=; b=W0OR6anF1S/9KUFhZmsVZ+lMBf/kgMOMeg4N7+Qux4In
 PbiO5rZI4CZOCJMKJ87SRuUgrjcN5jQFuEluc26Pu9l4/d6JY5RR4gocA2vyFM7n
 V4XRBclbyNtFVRc/pdTkiO/c0g9H/nIg1S9oB79DseWI0Md8osPMNkouiRS4getl
 SxoOHPlpbX8k8+kwNZZthgMZZqExlQEUHPxW92eqT6xbYiadGagNjz+eQZq933x+
 Kr2jap6b1gleaMAjl6q+5y3Mub2/GixUURV8lZY/WOPe2mW0qkkfaJ1PQ9sJT1sC
 4QguISjDX43eBPx43sH6CQmg7EKBpoHEm+4CXwghbw==
X-ME-Sender: <xms:ZRqsZiYEWwwoS-uXAip76jTJezvLiHkaeQMsTl15euitbzCXQqwl2g>
 <xme:ZRqsZlYEeRdQJunJ4lsun-ZI4exux2nkE1kni4G1Yt6RuGhqv9AEz2hIMUgpIrqGS
 VuGA2LNIa_dvNyD_Jo>
X-ME-Received: <xmr:ZRqsZs90FEN8jwAR3VdYKgnp9HcucaeWi85QnL08Mkmz01jqid4L3goYxDWaYVc4nUQ4WY4olI-K5WPX3Ob5hzvVwXb_NOFMuw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjeelgddvfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfette
 fgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:ZRqsZkoiX2bi8sCDyu-BLnf78IgHj5eKhVW7zLFh3Il-dzGXfQ04IQ>
 <xmx:ZRqsZtrZyxMBLPZi2enJ87iIVNHe2XiNEfxxQcavdstwPR7tX7JsNw>
 <xmx:ZRqsZiQ6ZPVzorbQxXPpDGZKpOM6kCDnAb-CjRK0QTCiAeht6gEnRg>
 <xmx:ZRqsZtqqtsvKV-pNVmQoefgwnCfoZLWMu7nvaWUE-LAMDdiObxqKQg>
 <xmx:ZhqsZk2I4sic7G11KpnSEWO-TE_h5iEeipph6R_0dC-W1g57beWX_mth>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Aug 2024 19:29:40 -0400 (EDT)
Date: Fri, 2 Aug 2024 08:29:38 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: utilize kref to maintain fw_node with
 reference counting
Message-ID: <20240801232938.GA58901@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240801022629.31857-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240801022629.31857-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Aug 01, 2024 at 11:26:29AM +0900, Takashi Sakamoto
 wrote: > Current implementation directly uses refcount_t to maintain the
 life time > of fw_node, while kref is available for the same purpose [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.148 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.148 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sZfF2-0005Zz-L4
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

On Thu, Aug 01, 2024 at 11:26:29AM +0900, Takashi Sakamoto wrote:
> Current implementation directly uses refcount_t to maintain the life time
> of fw_node, while kref is available for the same purpose.
> 
> This commit replaces the implementation with kref.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-topology.c |  2 +-
>  drivers/firewire/core.h          | 15 +++++++++++----
>  2 files changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
> index b4e637aa6932..46e6eb287d24 100644
> --- a/drivers/firewire/core-topology.c
> +++ b/drivers/firewire/core-topology.c
> @@ -39,7 +39,7 @@ static struct fw_node *fw_node_create(u32 sid, int port_count, int color)
>  	node->initiated_reset = phy_packet_self_id_zero_get_initiated_reset(sid);
>  	node->port_count = port_count;
>  
> -	refcount_set(&node->ref_count, 1);
> +	kref_init(&node->kref);
>  	INIT_LIST_HEAD(&node->link);
>  
>  	return node;
> diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
> index 7c36d2628e37..189e15e6ba82 100644
> --- a/drivers/firewire/core.h
> +++ b/drivers/firewire/core.h
> @@ -183,7 +183,8 @@ struct fw_node {
>  			 * local node to this node. */
>  	u8 max_depth:4;	/* Maximum depth to any leaf node */
>  	u8 max_hops:4;	/* Max hops in this sub tree */
> -	refcount_t ref_count;
> +
> +	struct kref kref;
>  
>  	/* For serializing node topology into a list. */
>  	struct list_head link;
> @@ -196,15 +197,21 @@ struct fw_node {
>  
>  static inline struct fw_node *fw_node_get(struct fw_node *node)
>  {
> -	refcount_inc(&node->ref_count);
> +	kref_get(&node->kref);
>  
>  	return node;
>  }
>  
> +static void release_node(struct kref *kref)
> +{
> +	struct fw_node *node = container_of(kref, struct fw_node, kref);
> +
> +	kfree(node);
> +}
> +
>  static inline void fw_node_put(struct fw_node *node)
>  {
> -	if (refcount_dec_and_test(&node->ref_count))
> -		kfree(node);
> +	kref_put(&node->kref, release_node);
>  }
>  
>  void fw_core_handle_bus_reset(struct fw_card *card, int node_id,

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
