Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 206ADD24C38
	for <lists+linux1394-devel@lfdr.de>; Thu, 15 Jan 2026 14:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2eylM1rE/NxJMn6sqVFyAIetxTHKokdjstZ0h4sliMo=; b=OnhQhbvOqMTcLO/bWxhlmgOCsb
	+puY3SxktnCgEFBn23OXt5VuR3EK1fHjo1abEoIuJE9nGfbkxSzw6VK+4V7BQ8b6n70sIhXLadXh1
	lCir1EQOzYAsx9iJlRJlVC0D1wrjw/zY068LE9yIzHt650EXZ7dJLT4/LnOoJUZ88T3k=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vgNY7-0003Yl-4L;
	Thu, 15 Jan 2026 13:38:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vgNY6-0003Yb-16
 for linux1394-devel@lists.sourceforge.net;
 Thu, 15 Jan 2026 13:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+UJr4IFUNmYAblxJ541k41GqqOweQL3KyW+Obe39FiE=; b=NJk3aNILDEFKXye+hfZR9smIH4
 HpuDqvQQ+h3lzvo0RKW5/ss3GYiOUVI82AmIaGiJOL0FtPN+it5Gt1w7Xj+DBpNYj6t18vyeRxyOq
 GBIfAHE1p37QUJjAxEKROBFatly9hVHR4pnH5c76H2yZRKgM1c8b4N0M8j5oOyEzGMyg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+UJr4IFUNmYAblxJ541k41GqqOweQL3KyW+Obe39FiE=; b=NJUm5XpDQ/5bNTJIF1TNR1wa6u
 rncRYmGvf9VAB9NSnGMd6KT3l0rTg8hrbpUoJJIMQ77zcONiB4r7nXCqMrjj2uC08YSt1I6+95duq
 gUYjceOUk3ePJOTEf06OE/Zn2WUdITLcJtCwRteAU4yXsPvu/qpcq6HpjmPU+qC2AVJ0=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vgNY5-00007D-0H for linux1394-devel@lists.sourceforge.net;
 Thu, 15 Jan 2026 13:38:05 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 57A9B1400126;
 Thu, 15 Jan 2026 08:37:59 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Thu, 15 Jan 2026 08:37:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768484279; x=
 1768570679; bh=+UJr4IFUNmYAblxJ541k41GqqOweQL3KyW+Obe39FiE=; b=H
 Cgi+Xw2esONyCVd04pup45/8O5tod3tGTPRLhpnJTRC6deHV/HbvhUrQsGkFYc3L
 uPLikgHLG2y3GK2wr7ii667rIRhYrFdlMzcqKF07SiNsEtBfh8SE4Gfx8WDi0Gka
 9NyZOIgaQPBnuDT6fBLuIOBrdFUSWlk4xr2orp3jW334WTFhq6pyi6oGt0rHlLHW
 ngLrcaSJyiuYXHb4sET9VToWlq79u3WO+0tUV0Pi/y/YSkU1485A45OkMnGNepVH
 RQLof8lHbpWZlSrvB/LlZMlySFqsVr6Z5W2hFv7HKgB2tMoInEyEgy8kH6OyTTyG
 runxRwFN31zcuZCJdnBeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1768484279; x=1768570679; bh=+UJr4IFUNmYAblxJ541k41GqqOweQL3KyW+
 Obe39FiE=; b=fz4lH4hY8ijchCc+c7dAQhDaZOUD1YWXFHRD0fOm6CX55ynxiSC
 jJM61xIfH9VZRo+Snc+pEeScBEUsN/CD4H2nWavbFu8hPuG0hCecuLEeclOlunJl
 cfL6eXT12PcVHCqCNQMngbSh6YOsrAbxoLr/DSfEpyrEtCRKcWH3xDNn9aXtxm9i
 GPrpdT1iySDg9F73Q4WSCUL2IN8mcf6Sl4bz82eqYtcQQ4AFWZe6EZfLTk/jrXnT
 YvnxUuvNpbkQpi18pAhaQlZE3DI38yRdmG06Yd3tsbsuO/HnzKnajuVkeMyiPX6Y
 yzBiH3PELE7JWL4aEW9h6qjR3gVF3CYzBRg==
X-ME-Sender: <xms:tu1oabv4ZwC3-YdNfesaKjN-VMzho3iaTwniE-cZLt3TE_6w09c-0w>
 <xme:tu1oaSeJtOSRoALzA56cJ2707ohnnSUQ3g7D08Q3TEbImay_6yqfvi1ptAeB6BCyi
 Vsbe-jJfA6N1el21zKxyymtsg8DnzxzrQw6elp6H8Y6tnSfvNplCcVD>
X-ME-Received: <xmr:tu1oacZlVArhF5Z6LfMiWdef48yXooZ55noreL8YM67fK0WC-fobx88xyveZKg01DIsXnWF4rQcPNr8XwDMRR8sJpTQ0ZuODYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdeivddtucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopegrrhgvhihouhhlohgtohesphgrrhgrnhhoihgtihdrohhrghdprh
 gtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghf
 ohhrghgvrdhnvght
X-ME-Proxy: <xmx:tu1oaVWCwecazPEC04_M_c0uMK3AtLx4WWzpcqspx3UGVmPPSRkLzg>
 <xmx:tu1oaehZn07APDaSQ1YiJpRIva2bVyWw7Jy9XxuMSz5V3qmbYwW_EQ>
 <xmx:tu1oaTWjF1RgepgNEP8zpOi0MtZIDYLvVVC88dF2uY0ddVCRTCLwTA>
 <xmx:tu1oaVPOIlGdO9gIYR_4-24RLL971zYXX4uqrJFZ_ebETo7h7tD-Bg>
 <xmx:t-1oaTS2MH6xb-oN6p-NSlA1HXyFVL5p6NyOxRXH4Z6OSSIZSyfTU4dy>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Jan 2026 08:37:57 -0500 (EST)
Date: Thu, 15 Jan 2026 22:37:55 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: AreYouLoco? <areyouloco@paranoici.org>
Subject: Re: [PATCH] firewire: ohci: fix index of pages for dma address to
 1394 OHCI IT context
Message-ID: <20260115133755.GA384327@workstation.local>
Mail-Followup-To: AreYouLoco? <areyouloco@paranoici.org>,
 linux1394-devel@lists.sourceforge.net
References: <20260114131729.16133-1-o-takashi@sakamocchi.jp>
 <20260115123523.GA179174@workstation.local>
 <A01763CF-665C-4215-9FD2-F6686AECC6F0@paranoici.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A01763CF-665C-4215-9FD2-F6686AECC6F0@paranoici.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Jan 15, 2026 at 12:38:11PM +0000, AreYouLoco?
 via linux1394-devel wrote: > So kernel tree 6.19 is already going to contain
 that fix soon? > > Or for-next branch is some future release? The issued
 commit is only in for-next branch, which I maintain for next merge window.
 The issue is not included in Any release candidate of v6.19 kernel. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [103.168.172.157 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.157 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vgNY5-00007D-0H
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Thu, Jan 15, 2026 at 12:38:11PM +0000, AreYouLoco? via linux1394-devel wrote:
> So kernel tree 6.19 is already going to contain that fix soon?
> 
> Or for-next branch is some future release?

The issued commit is only in for-next branch, which I maintain for next
merge window. The issue is not included in Any release candidate of v6.19
kernel.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
