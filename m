Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 492DD9302C1
	for <lists+linux1394-devel@lfdr.de>; Sat, 13 Jul 2024 02:39:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sSQmt-0006yl-4q;
	Sat, 13 Jul 2024 00:38:55 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sSQmr-0006yS-TB
 for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Jul 2024 00:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IlKo+22jX4Sfmbrw57Vqlb0xo+n1oEvtf2J9dwT6eig=; b=eX9RsV0PMzKJ7qJhwQ/jNyajiZ
 esxAHV9aea9ABWl8I4Q1fLE5U+JSMxC572J3WM0PipwLNYjqTfWb8OcIIlYPFKURN2kZNq8iilmH8
 Wnn596ayPxCQiEL+DziTV11g9lGWOIQ9mcFjvFFXujT6DsDoCqvP1D6k/n+8L5OwVzVw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IlKo+22jX4Sfmbrw57Vqlb0xo+n1oEvtf2J9dwT6eig=; b=k5clrD993etIRr4bY7i0ZsKnAr
 BBaosk10JtF8aOcV70C/vKWoEh/rfOswFcuRAzlCrp1F1BLCgT+iA50HQuBCyQqYtZmL325xI10dm
 nJsVSTQ0UJRZuVnXGsuOEvUvENwiiPo3nhGO3ck2scUDscGVO/CyAqPG+i1NVFl2+SME=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sSQmr-0004PL-E8 for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Jul 2024 00:38:53 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 0F3F81140C69;
 Fri, 12 Jul 2024 20:38:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Fri, 12 Jul 2024 20:38:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1720831122; x=
 1720917522; bh=IlKo+22jX4Sfmbrw57Vqlb0xo+n1oEvtf2J9dwT6eig=; b=a
 aEErcjqJtnGaEToFWtrtQviFxQbKFw8gzyg7bZn9FmHg5K27moZLawgrIckIOfn0
 lceMyL3CPzkLoRDV+piGTuEQSnKzx452u6Clq/CS0fxs3sDKeIqtnVlhPjAvnyOi
 ZERb+dyY5d6depH4WXGn0sYx/N080/8Q4zzmzgNIS9SmB8Ik7b+D8Hw+MZ1Lggz9
 79csGnSbxQKJ4bnOJuYsf6ZAwh20cX5bTKGYEWbdPBGwJm8vGFPvlopkV7YF2Zi4
 GYxVAXy3JuWNc5gWGB8n8H14CyIYAFs3xM1KMWTeq5FBhrFjfs+85P3SHFFWKeuI
 9N2/4savZvQFGeUcmUKDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1720831122; x=1720917522; bh=IlKo+22jX4Sfmbrw57Vqlb0xo+n1
 oEvtf2J9dwT6eig=; b=PtyH7TG0Ohe0XrUdrA4bWFlPhmTxn74YoXkvJ0OtkNBY
 BJAX8w84wMiLfuZlI8bJa6cSm1wTOD700RK01d6pfd+ugApvVBA6LK+OQ4T1s0SP
 xBZDZuF752XMuAnTjK0B275xQTW0khTcE7zZrq/N8DkuImkTGpFfB6gFC3l9pqd9
 t574pHttgRB6+kCP6NAhIqIgVVhi3pJddfKCquiVxs01oTYVve1bhf5LbyzVwkHp
 R2xMROju+5y6cllVsgiS0YsM2JVfNuEXS00cgQWD33Y9QSXLEWsxq8ACYdkC19hH
 4XrhcQrk/OopJ1rdF7Qj+bHkN3S9O9RUtTWlSfd/cg==
X-ME-Sender: <xms:kcyRZpDoMqu5wxU3HDQpZRy0Cidbt4YQlX-_ymXwcHK1692tgOiPrw>
 <xme:kcyRZniBVC5asF6P5tCahmbXOYmfHC6IvbmVFlqPVMGnuRoTlAUm12t34MXf2lVH6
 GcYSZQV_6Lv_XMMGBE>
X-ME-Received: <xmr:kcyRZklITQip7k1xi-zOtfkOFGWMKDeBr8EPxfUvV3f9XyMdU7AOmpXHCuqrjzP1AiDerMIEst5e7r2tu9LdlyHo-y3OidjlHva6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrfeejgdefjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfette
 fgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:kcyRZjzJCC6XELpA6aPCcXEAiZxDNioKI14ZzUoWByefs3VZFb1JAw>
 <xmx:kcyRZuRaHUbzcrFKMmxW_inhRJ4qJNb2K0D136uuNuvWI-xj18YpbQ>
 <xmx:kcyRZmYnPz2A8K4O6QMi39co-c_kkHSDX3qy8ku5GZ537cEkRnRpaQ>
 <xmx:kcyRZvT77gn2Nvyd_zsmrk-tdMqVs9gvLzwB1RI0ZfzHTJKwxDwWsA>
 <xmx:ksyRZpdg-8C-OPM0ZVtIph0VaF36L4PI4aE1pD4AY5bbX_3yNm1LSCzR>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Jul 2024 20:38:40 -0400 (EDT)
Date: Sat, 13 Jul 2024 09:38:38 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH v2] firewire: core: move copy_port_status() helper
 function to TP_fast_assign() block
Message-ID: <20240713003838.GA107956@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240712003010.87341-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240712003010.87341-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jul 12, 2024 at 09:30:10AM +0900, Takashi Sakamoto
 wrote: > It would be possible to put any statement in TP_fast_assign(). >
 > This commit obsoletes the helper function and put its statements [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.159 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sSQmr-0004PL-E8
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

On Fri, Jul 12, 2024 at 09:30:10AM +0900, Takashi Sakamoto wrote:
> It would be possible to put any statement in TP_fast_assign().
> 
> This commit obsoletes the helper function and put its statements to
> TP_fast_assign() for the code simplicity.
> 
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-trace.c   | 11 -----------
>  include/trace/events/firewire.h | 15 ++++++++++-----
>  2 files changed, 10 insertions(+), 16 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
