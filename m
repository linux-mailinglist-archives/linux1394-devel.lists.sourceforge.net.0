Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 448A6955A8F
	for <lists+linux1394-devel@lfdr.de>; Sun, 18 Aug 2024 03:48:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sfV2G-0001VQ-RE;
	Sun, 18 Aug 2024 01:48:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sfV2E-0001VH-M2
 for linux1394-devel@lists.sourceforge.net;
 Sun, 18 Aug 2024 01:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=so7ap9O4i6T1l+eY2GWYjpjsxiRwe2Wo10QeB0EQ3AI=; b=NwRhY2uw3PGBA5QieHx0LJAj7y
 gjlizW458hSsnTnqCaOqxrOyHLlt2AjKmwRb1GXWJzuux51j3CU4uBarYcxatSTyeo0B0coPTSsP3
 MN/MM/HowlHm/WaSI5noBmOxnlMi7hOhY+lycC8HqgRJoYj8+Ny8bxwKPMWDYg78/hvQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=so7ap9O4i6T1l+eY2GWYjpjsxiRwe2Wo10QeB0EQ3AI=; b=GXi1BdcEpviD8mhvOXhTJlF+CA
 QNxxHqtcSeuiegerQL7XSEVQ0CqG93thfWmeogHloSgKNS+qPjrKThmdzJb9CgoMM0IFV/PQd+nCF
 +3IRhJ3eAxVt+oKZHJL/mfnrCYI3vFeqHsUoh9lq/kIlw3fCLg71Q4v9xOcAQ4ECbndw=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sfV2D-0003UD-Pr for linux1394-devel@lists.sourceforge.net;
 Sun, 18 Aug 2024 01:48:46 +0000
Received: from phl-compute-01.internal (phl-compute-01.nyi.internal
 [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 10A12138FC19;
 Sat, 17 Aug 2024 21:48:40 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Sat, 17 Aug 2024 21:48:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723945720; x=
 1724032120; bh=so7ap9O4i6T1l+eY2GWYjpjsxiRwe2Wo10QeB0EQ3AI=; b=q
 ipz2NpEjWeS0I7KC8Gs/gkdO5QCqeqQjUt4Fba0e+18NKNqVpQ2JIc1piD6stq9c
 F8yvun7jgKn2wwslanUjWh1xMNhwKzMK+61NfzbuluNE7rV+rLAjELSrErD4nZ01
 huLzAcmrY8irIsn89G93/3xTTPdfDD/TuYYXb+evodp0S6M+0IDT59blR0RoOV2/
 hArhl2CRDmsG/7uRSbrqyRlO3Q4L7/4/mELIQssIoFx3yd6ymK21BnISP3Y44Y3b
 8ejwXPPj185vULJ3K8m6J6v3xo8OT/hv7Q3T+H7bGBKQ8O0BSepLaK5VDuBs+0Rg
 c9kxYO/YjY1qBj+sQqXug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723945720; x=1724032120; bh=so7ap9O4i6T1l+eY2GWYjpjsxiRw
 e2Wo10QeB0EQ3AI=; b=JIPqqg2L5IrFwTcssdFY+FD2AKZdF3hegKvrPa6q/k6/
 lVf7pUXqu37gKD5q7KGXmolx60HZXoVJEg5JCgVbsKI8grf8nzwNu8In8pZyTvKy
 cJg2nL4DctC4CAGxW8Xi4v+q4W0doF0ylY73aV3cPNzKzoBgt2mAbqrT7kyltsdv
 /ruT+gqMy2ygEsDK5RTqIrziCfkWFxJSuOBe1Mo0b/Wgyq7Se4OZI0BHBw+WWpti
 faen8m8lWAJOWirGMftroLcVlcP7sRNgXZr3F0Nz5pTMSRaQGCx7Mp3XzhxYIsBU
 We3ONCsWpE20iPHFN2wNiqca8NtMKvGPjpApjRIzLg==
X-ME-Sender: <xms:91LBZti1SJKrTg_EUHn6j52gIZvt9N5GeHputDJlFMzueuFTJme-5w>
 <xme:91LBZiCZa9dWUcHHNIhcyxHU17IgUmPLez4hYRkDJPl1yjRXLVjB_oRilADcBGnEY
 Bb-0gT1pp6mQS4mfho>
X-ME-Received: <xmr:91LBZtFKQ0XEdmp0ipSEa2fsRCpm_eeuHIa2UhTTX3qOjEwG1HpnaUuqnf779ccLegxeC52dz3OtIEF1OK7mLQ0T1p80nJIjfVM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudduuddghedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeu
 ffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhho
 tggthhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtg
 hpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhho
 rhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvg
 hrnhgvlhdrohhrghdprhgtphhtthhopegurghnrdgtrghrphgvnhhtvghrsehlihhnrghr
 ohdrohhrgh
X-ME-Proxy: <xmx:91LBZiQNbm4W98e8hS3itkVduBcnKwKtOHf5wjD4kDzv-AOZm7EBCA>
 <xmx:91LBZqy0HXYcpePiTI9z8MBXcwgK1GsTTtHrqhXK0u5DR8-lWl1trg>
 <xmx:91LBZo4RbzKANhO0bU6pgLMaZhy6q_qAFfJyjQFFm1YYNEstVE6AjQ>
 <xmx:91LBZvyelQhU0RJI6V6-y1CKZCBAKZaQa5SDxeCCDuYKuXfAYXFqpQ>
 <xmx:-FLBZu_aZh1KB4QuR2ZAjh2cAau0SRsIEBnEB-NsjAbiU2z2mxiSwWk4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Aug 2024 21:48:38 -0400 (EDT)
Date: Sun, 18 Aug 2024 10:48:37 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: ohci: fix error path to detect initiated reset
 in TI TSB41BA3D phy
Message-ID: <20240818014837.GA188655@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@linaro.org>
References: <20240817091128.180303-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240817091128.180303-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Aug 17, 2024 at 06:11:28PM +0900, Takashi Sakamoto
 wrote: > A commit 404957c1e207 ("firewire: ohci: use guard macro to serialize
 > accesses to phy registers") refactored initiated_reset() help [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sfV2D-0003UD-Pr
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
Cc: linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, Aug 17, 2024 at 06:11:28PM +0900, Takashi Sakamoto wrote:
> A commit 404957c1e207 ("firewire: ohci: use guard macro to serialize
> accesses to phy registers") refactored initiated_reset() helper function,
> while the error path was changed wrongly.
> 
> This commit fixes the bug.
> 
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Fixes: 404957c1e207 ("firewire: ohci: use guard macro to serialize accesses to phy registers")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
