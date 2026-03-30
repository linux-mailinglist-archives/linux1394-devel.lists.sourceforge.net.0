Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2G/eC+TNyWm62gUAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Mon, 30 Mar 2026 03:12:04 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEA93548B6
	for <lists+linux1394-devel@lfdr.de>; Mon, 30 Mar 2026 03:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ng/MhHYcrHX7DZXNNYhkChD/I0KacSowm6gc9JCjLvE=; b=dl4ezff9291GJu1oRTy3d5F9Eu
	26UYiTQUVhF1sGZdF+WKyisA7T2jal2yrrO6wFHuNxeWP3Q10C6Vrm8T9WY8qNZt/h1QhSqipPULn
	jK5EAi8NPpKn64RQLkfmkM8w87FIAayyI/J6apVO49xmdJ32ogY9/jIsC/Vic33xh5nQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1w71AU-0005Tk-O7;
	Mon, 30 Mar 2026 01:11:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1w71AS-0005Ta-53
 for linux1394-devel@lists.sourceforge.net;
 Mon, 30 Mar 2026 01:11:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jmojO+KXhf6ANjb3kyM3+4AA8cWt+mkVS822IT4EINI=; b=GEgvh6k5T0p9eFgnH6CKJqGlh3
 kDHj9BLiVhp6KUVHxVH3dGjIGzLGjlBqUAWD3M91IRNJKH3o9fDErYk2dfzqyb3Xdw1KJ+dCBCCcR
 M/0B8+89+iVuDikvCfECneFU3l2Le2ZWmR6IjkNaduRbC/sVxVonO6Pc1sVmndP26qzw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jmojO+KXhf6ANjb3kyM3+4AA8cWt+mkVS822IT4EINI=; b=Qi7nk5ZlTfqoX6hDY6cqBZgl8i
 hvaiYtfIzyMZ6JUJuQEVp0PIf0Q9s4RZ43r2FFTF1Ae5sVYcoY0ALBmyG6In8bAilU7pdXtJWOxmO
 h0OJoxcB9mdrYzp5qmnXmaTriqXn/klDKS2sB0PASIMlrI+UIrAvKqLX30Q8lbxjmMlQ=;
Received: from fout-a8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1w71AR-0000oE-5A for linux1394-devel@lists.sourceforge.net;
 Mon, 30 Mar 2026 01:11:48 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id BEED1EC0096;
 Sun, 29 Mar 2026 20:57:51 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Sun, 29 Mar 2026 20:57:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1774832271; x=
 1774918671; bh=jmojO+KXhf6ANjb3kyM3+4AA8cWt+mkVS822IT4EINI=; b=B
 AoKATqOjm64qqcR1a8chiRSa/iYG2C3y8MP3icAlVJIEeJwNMcLbdbefB671WCDX
 snCYc2cRY4+JmR5KaH2fbMpz4peM5loE9wSB9Jc3uTap0BhlfjEQN8OlFtLaTo0Y
 2ju5yISUJguhZZ9B3lStSl6jbkRY9RcrusYcFpPAapjsc0edwWw2u4Ic2qrSY+cx
 Q46vXCA1YemL6RlqrITnWQyy+tXXIlDCR8zxV/QMkkS9lL0WEk/o+YL5OSx1IC9t
 a7OA1Az3mm/HPte8c0YDIBUq1WpRq/asW01rwLomn4oJZyQdvjzCsDxz8AKUVzNd
 Z7+RPUIjn++Lno0aS2LFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1774832271; x=1774918671; bh=jmojO+KXhf6ANjb3kyM3+4AA8cWt+mkVS82
 2IT4EINI=; b=x2PsDnR2zcvEg6TxW/d/M/JPc0aFiqtGvZpLEp3wTW0EhrXtXZE
 vVvuSt/xYh4kHo6IOnztFEBEc8afpl2cdX5zxfR1mLc4jaSdbFHPBbeiv1fI4fH7
 R5ZloKD+FzcCeyVNC5d02jHZaZDDj0ncPT/4pRr18Kp6EDlQWPXQDGvABFnBl2mg
 yP5Cc8eNzjwxsPziqvHtUdxUrT1/0qPyJo9/F0H4AV1l7b3uyYivx//icnM/WF4y
 YS7E2ZFRmJgENGOW/tWNd3XDEQj9WYXfFrIlohNzaOeg2YJlVgP+RNEr9yABndWj
 4Qn4fZ8ec9JM0WMNwdukUHlmB2C+slXxNOQ==
X-ME-Sender: <xms:j8rJaR-HxZGABn_lOfs8LkpdT8LRuT23eFG_sWmrOYvzyIu8BjHYSA>
 <xme:j8rJadfl3uP9GtnqfGla7nGQTsKiaCw6sFyuvPiH4q4U2n9vSnX9ZCc3tbbqDDo7A
 BT3SRPGwqirQoXe_eQ5ORL4HhLR6CbPvnEELlIPybXKkcbxejqwUEM>
X-ME-Received: <xmr:j8rJaSGC_AZrDr1xst49zpVtQ0MliXy0RPPb6Opp_DmXSQTIUZpEG5u2RUHCpj64a6d3p4gGs4fgFUdpozgMlS2UlbQX>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeffeejheelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeeiieet
 vdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghr
 tghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepthhhohhrshhtvg
 hnrdgslhhumheslhhinhhugidruggvvhdprhgtphhtthhopehlihhnuhigudefleegqdgu
 vghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplh
 hinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:j8rJaTePanVcb_neIyjmLTj8D34B_vqQBOeRRrrGnEhwBoBQ96Gv8w>
 <xmx:j8rJaUFukeG6gCx6I-GuJIHKLuUdiCb1SqghzDpS_WKDEe3OnekEiA>
 <xmx:j8rJaUUYFRloGl-Y_ehq3n4BFukCsDQW8tDqz5wmU6nNAWlDMXsjtw>
 <xmx:j8rJaTJhT0Wp6TuaxmX7Kuktg0c26oxK6gtwwdHH-ENryjjlvhpq2g>
 <xmx:j8rJaZu-uZM5lVISQygGOnHv-38eFPxD4laI0bbYE3O75cnNH96HJEOl>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 29 Mar 2026 20:57:50 -0400 (EDT)
Date: Mon, 30 Mar 2026 09:57:48 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Thorsten Blum <thorsten.blum@linux.dev>
Subject: Re: [PATCH] firewire: core: clean up modalias buffer handling
Message-ID: <20260330005748.GA115569@sakamocchi.jp>
Mail-Followup-To: Thorsten Blum <thorsten.blum@linux.dev>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20260329211940.371395-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260329211940.371395-2-thorsten.blum@linux.dev>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for sending your patch. On Sun, Mar 29, 2026 at
 11:19:40PM +0200, Thorsten Blum wrote: > Use scnprintf() in get_modalias()
 to return the number of characters > actually written to the destination
 buffer. > > Also reserve spa [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1w71AR-0000oE-5A
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
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:thorsten.blum@linux.dev,m:linux1394-devel@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm1,messagingengine.com:s=fm1];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,sakamocchi.jp:mid]
X-Rspamd-Queue-Id: 5AEA93548B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Thanks for sending your patch.

On Sun, Mar 29, 2026 at 11:19:40PM +0200, Thorsten Blum wrote:
> Use scnprintf() in get_modalias() to return the number of characters
> actually written to the destination buffer.
> 
> Also reserve space for the trailing newline in modalias_show() and
> append it explicitly, instead of using strcpy() and relying on the
> formatted modalias to fit within PAGE_SIZE.
> 
> While the current code is safe, this makes the sysfs buffer handling
> more explicit and consistent.
> 
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> ---
>  drivers/firewire/core-device.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)

I previously considered using sysfs_emit(_at)() in the code, but decided
against it because the code is called in both sysfs and the workqueue
context of firewire devices. The buffer size differs between these cases
(either PAGE_SIZE or 64).

In any case, as you already noted, the current code is enough safe. The
total length of formatted string is fixed (= 41 + 1) by the format
template, so it is unlikely to cause issues. I have little motivation to
change it.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
