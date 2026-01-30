Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PnwMME2fWkuQwIAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Fri, 30 Jan 2026 23:54:57 +0100
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9ABBF3F9
	for <lists+linux1394-devel@lfdr.de>; Fri, 30 Jan 2026 23:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IDctJSTxiO2/8Vn2Yd0n5ngSBsd6eyvcB1MpbTDTmjI=; b=YlZdo7lpXM5rhKeXhiiZYGui7x
	whxPgw+E065GZnrLMSzIWr81hS4pb0iYyNDzGUSKzN9l2xVIp43Iid6EkjPYoLcOkHucJ0kkH3iaL
	DRG+D+tSTh+IjQnp1LfShCnNRKgs1i69Nqf9pZA40xfhzIP+Wdv/TtJT42W4n/S8jsxE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vlxNy-0001Vj-Er;
	Fri, 30 Jan 2026 22:54:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vlxNw-0001VZ-L7
 for linux1394-devel@lists.sourceforge.net;
 Fri, 30 Jan 2026 22:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9yBws93yD0oDyFbpx5xYcJFZURgzaDdXc32QPzrcaXc=; b=ZXQZQZnAA1kcO90jrrilP4ZClU
 6wN+njyuCeS7j/9frn4HWpeqBHIwwubv2oVopX0tqSTJXJMWHaXH8FPws35vRVdsTs+aadGzD6BNZ
 1yguNb5uFLIi2MaiDE+u6Jx+xLBFfOM7/RuKV6QVIeHH9YhM6HpX6NI0AdRdPMfU6qeA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9yBws93yD0oDyFbpx5xYcJFZURgzaDdXc32QPzrcaXc=; b=l
 mEwx7wSxzn8UWJcyeYW8quSB9Lg+cbHiiX51Mejm7NiSdBFs3UoHpXoox6ABz3/R53/393dlqilr4
 Vm+I3bLPebINJPnjynnMl5QXq7EaIfcqYa/1iamfewJXHX4BiQIrHh1q2AmZo6z+mMiqfRvqMz3hz
 DpJMFv4slXzoGVrY=;
Received: from fout-b8-smtp.messagingengine.com ([202.12.124.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vlxNv-0001eI-FU for linux1394-devel@lists.sourceforge.net;
 Fri, 30 Jan 2026 22:54:40 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 7D9C11D0009D;
 Fri, 30 Jan 2026 17:54:33 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Fri, 30 Jan 2026 17:54:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to; s=fm3; t=1769813673; x=1769900073; bh=9yBws93yD0oDyFbpx5xYc
 JFZURgzaDdXc32QPzrcaXc=; b=Hp8qLhWnrt2N9wnw24FQrl0RZtSp7RpwPhyd5
 OP3yEJE7EoEJywblTyTJ4gBcDS6lgDdSKnK68c2yApkiv/5CSzzCW+gMKKaXItpH
 IniPGN/1+qB9fpJuhJjc7g/ciiNdLonxBgLXtBRYQwHIwJ8eNsmIevLiA0a7A313
 A65HL6ER9+ZEvAUlHUZgGf3jp05EDBh0RxD68w7txCKDkfe1lAFx3kKOeo9Jz5cD
 Qeo4bk219D06p/oAkPlyyVD2yyYm4C/e8B1byUovweoBY6kS2H+Gv5NRN6NLVoz5
 iKdmP8c9i72p5RDrexckVWNXNqJlR9FYvTu1oUZUnJOljhv7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:message-id
 :mime-version:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1769813673; x=
 1769900073; bh=9yBws93yD0oDyFbpx5xYcJFZURgzaDdXc32QPzrcaXc=; b=Q
 tBOMZFEoTAtIsAINdiMXaELjoth/RSbggHZTBzlrEIuW2h6wSwYPcNwXu6H7law4
 DbKi00ceYfc3jZhPNg5/QvQadll9eUJ4K9o5MI7wW7Q7TKVsMw5HjgGLbb1rFb7j
 7tfZ5q70cC06IA5T5WSdJZB9qIx1TZ7/GUmuWpHEkv1DdkvJg3fEuKbIM2BiQxom
 YGavEEg2yFgMz1wnptKQKDh2A7Awn4O6G5Mcdcj1HwF8mlO4/4fAh/7nb9VSng08
 /FeeSxao0+um8jy7DyGkSboWDBrBYgZz+tZGDTQxfKlH0v08j2e5Co7ZoxCehZz4
 yRXDjuRWUXwj0YlAK7Wgg==
X-ME-Sender: <xms:qTZ9aZd1d4XVhFODO3NBMrtnLl3AFp7o529PcuuQILnleC-hadEvvg>
 <xme:qTZ9aVDJ1lkqzOK4WDYurYmU5YSEeBV7wOERRkdy55y1HFZtQRs7zXl6PaBKjlNkG
 rymsdgMoSSSVQyQflsUQtLo0Ak3XbCo6ZRdQO2_qiZzPJh4RhAVCqg>
X-ME-Received: <xmr:qTZ9ac_MUtzU88KEG2rvUXVDRYODmmWAXHkD9yXAJCPMu-aQKu5uRqeoic5GLx-cmh2_8WNRpKVE8FzNdhzFe_M8yTzxd6chrA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddujedtvdelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfggtggusehttdertddttd
 dvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetfeeiteefveegvd
 fggeffheetleejkeekleeugeffffdtgfdtteetkeevvddvgfenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghp
 thhtohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepthhorhhvrghlughsse
 hlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgtphhtthhopehlihhnuhigqdhk
 vghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigud
 efleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghp
 thhtoheprghnughrvggrshhpheeisehouhhtlhhoohhkrdgtohhm
X-ME-Proxy: <xmx:qTZ9aQJ8rdIzvoK4yCz_Bg1NrFEAvyE-AZUuUtCfaO5idQfJ-ZEl5A>
 <xmx:qTZ9aVisCidllcgn1DxNlhqk6ChJGEX5OqlzP6tJp95BcOZ9ZHMy3Q>
 <xmx:qTZ9aQ5Yr4LvXtnqT89eG1rNjejXa6OU18rwbebPFt78NIdGpmxb9Q>
 <xmx:qTZ9adakvyH7YobHzuFcNQM0aQfHYDlcETxoDYwLlJ8w-zgz0PqiSA>
 <xmx:qTZ9adsturwvLMcMTDslq0Fc1QNb1C0ZVuiEbLrmUvPzFxzcZgFBxRF1>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 30 Jan 2026 17:54:31 -0500 (EST)
Date: Sat, 31 Jan 2026 07:54:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] firewire fixes for v6.19-rc8
Message-ID: <20260130225427.GA88593@workstation.local>
Mail-Followup-To: torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 andreasp56@outlook.com
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Linus, Please accept the following changes to fix a race
 condition introduced in v6.18 kernel. The following changes since commit
 20e01bba2ae4898ce65cdcacd1bd6bec5111abd9: 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vlxNv-0001eI-FU
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
Cc: linux1394-devel@lists.sourceforge.net, andreasp56@outlook.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:linux1394-devel@lists.sourceforge.net,m:andreasp56@outlook.com,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,outlook.com,vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux1394-devel];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: DF9ABBF3F9
X-Rspamd-Action: no action

Hi Linus,

Please accept the following changes to fix a race condition introduced
in v6.18 kernel.


The following changes since commit 20e01bba2ae4898ce65cdcacd1bd6bec5111abd9:

  firewire: core: fix race condition against transaction list (2026-01-29 08:03:55 +0900)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git for-linus

for you to fetch changes up to 20e01bba2ae4898ce65cdcacd1bd6bec5111abd9:

  firewire: core: fix race condition against transaction list (2026-01-29 08:03:55 +0900)

----------------------------------------------------------------


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
