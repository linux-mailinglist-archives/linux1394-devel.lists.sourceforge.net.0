Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B45F1DAAFB
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 May 2020 08:48:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jbIWB-0002yX-St; Wed, 20 May 2020 06:47:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1jbIW7-0002xw-P5
 for linux1394-devel@lists.sourceforge.net; Wed, 20 May 2020 06:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xbd4QyjDbF3SZl1k6t/MWDx0nV5JpEWjamT7q5zFZII=; b=Hk6N3La00KyOWog+rZBS8T1Ybv
 gxF6nOZLCGvzzKppQmjd2EPILAYrUyYT9Z5GgS7OV+O8EDk3XyPWlwUCNVo1Pl6IkgoClMJUbZ1Gm
 oK0xsL2X6XHs0z7RxXZNrzAUWu+G99eaxtlgBbgOxh90+jCkP3UVeEGNAkb7feACheL0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xbd4QyjDbF3SZl1k6t/MWDx0nV5JpEWjamT7q5zFZII=; b=c
 hLhxUPFVu5/1E0V/CVBNb/OGiKWQENIJVSMWtC5vs+2p7nxTAUfYC89HDB/w3D6KD5tMcARed9ett
 4oqFWJsErSsKAEOALooSiV/pMen0jo36ttsOO56o4vqx1fiAnM8X9iaz4DWdqcoM3oD1ge0XUSgLI
 DTgYD2QCQl+pn6BA=;
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jbIW6-00GGJy-BG
 for linux1394-devel@lists.sourceforge.net; Wed, 20 May 2020 06:47:51 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.west.internal (Postfix) with ESMTP id D773AD20;
 Wed, 20 May 2020 02:47:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 20 May 2020 02:47:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=Xbd4QyjDbF3SZl1k6t/MWDx0nV
 5JpEWjamT7q5zFZII=; b=j55eY0K7CWhdP023ay70cQNnhbIJQCyegwrSOP42Rh
 IziFFYQ7A2/evQftoSjXUaP0ux+p1kS88a0iCwanIeqOG87NlR5K+9VD2Z4AMWkq
 kLFg8AooNZtpsGk94Hcqww80vT5Ud2iJMfJEfwC+f56EgJgg5yy5yebIhZti1fVr
 jQ/FlFcnwGWWaw+zht282gLV0edgnsocrD7PS0OaKLRCJzy7b4Js2io8zEK4l+m8
 uZ6sJ9XmEq6qRKHaFWGpyjWR+uytq7Eu73WMZHmzA9+J9W/MiMgSRyjDw3nLIDZ0
 ryJh/QxzaSa8Kfn2GiGIiIlpH7+AOK8Jz/D4hT1KcltA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Xbd4QyjDbF3SZl1k6
 t/MWDx0nV5JpEWjamT7q5zFZII=; b=vxFpneb4AQRP42YQrOxd5MguOzBczVacw
 L2pSmH8J3dRi5QeW9wvFVoKgDDqSYK8Q14MpsX24Gx05G5XTfblfFaR3C8/q6rI/
 2XmShjE0TxY+6ZgpbXSbQYGb6UaLomWD1j3um+rf1OMqHNQwmsYJGorwSHH7vdDw
 Lw4XMi4o276un4C75CVK0HypgXzVZcgy8COHE8Kg/d/Ir0cpFE5vuwJlt11S8HfN
 vKGPGMbfHiCqOyl7koaGofle8w/NiWAi43VArjxIJCyK6puzm+Aeqda+dw/Iev+s
 PD8EIuSzoBIxcxM725omJOEelnOzUSbbunT5XtqzBd9Dcajed6OqQ==
X-ME-Sender: <xms:g9LEXsWJFdSbW1r7_l23A3C_F-_WS-AuHv9nCRowBAjn_96g79INLA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddtkedguddtkecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetieeuhfejke
 ekfeehteeikedvgeefhffggfdvieehhefhheeivdfhgfejjeduudenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecukfhppedukedtrddvfeehrdefrdehgeenucevlhhushhtvg
 hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehs
 rghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:g9LEXgnDhMYZZj0Yeaf3VvhSVXXDmPMghHVRbuzkitF-M0CgOic-fQ>
 <xmx:g9LEXgZ5bV8guLeV3VsTRyZ4PUNYaYcFQO1yxR_hp4macoEiLvJs2Q>
 <xmx:g9LEXrVXwwZBlGf71tDBDnm2mSc1fMLAUpJp1Mv6ODzntLMoJ_f6Hw>
 <xmx:iNLEXrjPYfmQ0mMgmisOjMSJN3ivHeiCyDlICOFv1t8CNADHradYNPY8IiE>
Received: from workstation.flets-east.jp (ad003054.dynamic.ppp.asahi-net.or.jp
 [180.235.3.54])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4A7E03280060;
 Wed, 20 May 2020 02:47:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: oscar.carter@gmx.com, keescook@chromium.org, mchehab@kernel.org,
 clemens@ladisch.de, tiwai@suse.de, perex@perex.cz
Subject: [PATCH 0/2] firewire: obsolete cast of function callback toward CFI
Date: Wed, 20 May 2020 15:47:24 +0900
Message-Id: <20200520064726.31838-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jbIW6-00GGJy-BG
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
Cc: alsa-devel@alsa-project.org, kernel-hardening@lists.openwall.com,
 linux-kernel@vger.kernel.org, levonshe@gmail.com,
 linux1394-devel@lists.sourceforge.net, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Oscar Carter works for Control Flow Integrity build. Any cast
of function callback is inconvenient for the work. Unfortunately,
current code of firewire-core driver includes the cast[1] and Oscar
posted some patches to remove it[2]. The patch is itself good. However,
it includes changes existent kernel API and all of drivers as user
of the API get affects from the change.

This patchset is an alternative idea to add a new kernel API specific
for multichannel isoc context. The existent kernel API and drivers is
left as is.

Practically, no in-kernel drivers use the additional API. Although the
API is exported in the patchset, it's better to discuss about unexporting
the API.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/firewire/core-cdev.c#n985
[2] https://lore.kernel.org/lkml/20200519173425.4724-1-oscar.carter@gmx.com/

Regards

Takashi Sakamoto (2):
  firewire-core: add kernel API to construct multichannel isoc context
  firewire-core: obsolete cast of function callback

 drivers/firewire/core-cdev.c | 44 +++++++++++++++++++-----------------
 drivers/firewire/core-iso.c  | 17 ++++++++++++++
 include/linux/firewire.h     |  3 +++
 3 files changed, 43 insertions(+), 21 deletions(-)

-- 
2.25.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
